;; Bundle Trading System for NFT Marketplace
;; Allows trading multiple NFTs as a single bundle

;; Constants
(define-constant ERR-BUNDLE-NOT-FOUND (err u1000))
(define-constant ERR-BUNDLE-EXPIRED (err u1001))
(define-constant ERR-INSUFFICIENT-PAYMENT (err u1002))
(define-constant MAX-BUNDLE-SIZE u20)

;; Data Variables
(define-data-var bundle-counter uint u0)

;; Data Maps
(define-map nft-bundles uint {
    creator: principal,
    nfts: (list 20 {contract: principal, token-id: uint}),
    bundle-price: uint,
    individual-prices: (list 20 uint),
    discount-percentage: uint,
    expires-at: uint,
    active: bool,
    bundle-name: (string-ascii 50)
})

(define-map bundle-offers {bundle-id: uint, buyer: principal} {
    offer-amount: uint,
    expires-at: uint,
    partial-nfts: (optional (list 20 uint)), ;; Indices of NFTs wanted
    active: bool
})

(define-map bundle-sales uint {
    bundle-id: uint,
    buyer: principal,
    sale-price: uint,
    sale-date: uint,
    nfts-transferred: (list 20 bool)
})

;; Create NFT bundle
(define-public (create-bundle 
    (nfts (list 20 {contract: principal, token-id: uint}))
    (individual-prices (list 20 uint))
    (discount-percentage uint)
    (duration uint)
    (bundle-name (string-ascii 50)))
    (let ((bundle-id (+ (var-get bundle-counter) u1))
          (total-individual (fold + individual-prices u0))
          (bundle-price (- total-individual (/ (* total-individual discount-percentage) u100))))
        (asserts! (<= (len nfts) MAX-BUNDLE-SIZE) (err ERR-INVALID-AMOUNT))
        (var-set bundle-counter bundle-id)
        (map-set nft-bundles bundle-id {
            creator: tx-sender,
            nfts: nfts,
            bundle-price: bundle-price,
            individual-prices: individual-prices,
            discount-percentage: discount-percentage,
            expires-at: (+ block-height duration),
            active: true,
            bundle-name: bundle-name
        })
        (ok bundle-id)))

;; Buy entire bundle
(define-public (buy-bundle (bundle-id uint))
    (let ((bundle-data (unwrap! (map-get? nft-bundles bundle-id) (err ERR-BUNDLE-NOT-FOUND))))
        (asserts! (get active bundle-data) (err ERR-BUNDLE-EXPIRED))
        (asserts! (< block-height (get expires-at bundle-data)) (err ERR-BUNDLE-EXPIRED))
        ;; Payment transfer logic would go here
        (map-set bundle-sales bundle-id {
            bundle-id: bundle-id,
            buyer: tx-sender,
            sale-price: (get bundle-price bundle-data),
            sale-date: block-height,
            nfts-transferred: (create-transfer-list (len (get nfts bundle-data)))
        })
        ;; Mark bundle as sold
        (map-set nft-bundles bundle-id (merge bundle-data {active: false}))
        (ok (get bundle-price bundle-data))))

;; Make offer on bundle
(define-public (make-bundle-offer (bundle-id uint) (offer-amount uint) (duration uint))
    (let ((bundle-data (unwrap! (map-get? nft-bundles bundle-id) (err ERR-BUNDLE-NOT-FOUND))))
        (asserts! (get active bundle-data) (err ERR-BUNDLE-EXPIRED))
        (map-set bundle-offers {bundle-id: bundle-id, buyer: tx-sender} {
            offer-amount: offer-amount,
            expires-at: (+ block-height duration),
            partial-nfts: none,
            active: true
        })
        (ok true)))

;; Make partial bundle offer (for specific NFTs in bundle)
(define-public (make-partial-offer (bundle-id uint) (nft-indices (list 20 uint)) (offer-amount uint) (duration uint))
    (let ((bundle-data (unwrap! (map-get? nft-bundles bundle-id) (err ERR-BUNDLE-NOT-FOUND))))
        (asserts! (get active bundle-data) (err ERR-BUNDLE-EXPIRED))
        (map-set bundle-offers {bundle-id: bundle-id, buyer: tx-sender} {
            offer-amount: offer-amount,
            expires-at: (+ block-height duration),
            partial-nfts: (some nft-indices),
            active: true
        })
        (ok true)))

;; Calculate bundle savings
(define-read-only (calculate-bundle-savings (bundle-id uint))
    (match (map-get? nft-bundles bundle-id)
        bundle-data
        (let ((total-individual (fold + (get individual-prices bundle-data) u0))
              (bundle-price (get bundle-price bundle-data)))
            (some {
                individual-total: total-individual,
                bundle-price: bundle-price,
                savings: (- total-individual bundle-price),
                savings-percentage: (get discount-percentage bundle-data)
            }))
        none))

;; Helper function to create transfer status list
(define-read-only (create-transfer-list (size uint))
    ;; Simplified - would create list of 'true' values for each NFT
    (list true true true true true true true true true true 
          true true true true true true true true true true))
