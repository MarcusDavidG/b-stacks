;; Fractional NFT Ownership System
;; Allows multiple users to own shares of expensive NFTs

;; Constants
(define-constant ERR-INSUFFICIENT-SHARES (err u500))
(define-constant ERR-NOT-SHAREHOLDER (err u501))
(define-constant ERR-INVALID-FRACTION (err u502))

;; Data Maps
(define-map fractional-nfts {nft: principal, id: uint} {
    total-shares: uint,
    share-price: uint,
    created-at: uint,
    creator: principal,
    tradeable: bool
})

(define-map nft-shares {nft: principal, id: uint, owner: principal} {
    shares: uint,
    purchase-price: uint,
    purchase-date: uint
})

(define-map share-offers {nft: principal, id: uint, seller: principal, buyer: principal} {
    shares: uint,
    price-per-share: uint,
    expires-at: uint
})

;; Fractionalize an NFT
(define-public (fractionalize-nft (nft principal) (token-id uint) (total-shares uint) (share-price uint))
    (begin
        (asserts! (> total-shares u0) (err ERR-INVALID-FRACTION))
        (map-set fractional-nfts {nft: nft, id: token-id} {
            total-shares: total-shares,
            share-price: share-price,
            created-at: block-height,
            creator: tx-sender,
            tradeable: true
        })
        (map-set nft-shares {nft: nft, id: token-id, owner: tx-sender} {
            shares: total-shares,
            purchase-price: u0,
            purchase-date: block-height
        })
        (ok true)))

;; Buy shares of fractionalized NFT
(define-public (buy-shares (nft principal) (token-id uint) (shares uint))
    (let ((nft-data (unwrap! (map-get? fractional-nfts {nft: nft, id: token-id}) (err ERR-NOT-FOUND)))
          (total-cost (* shares (get share-price nft-data))))
        (asserts! (get tradeable nft-data) (err ERR-NOT-AUTHORIZED))
        ;; Transfer payment logic would go here
        (map-set nft-shares {nft: nft, id: token-id, owner: tx-sender} {
            shares: shares,
            purchase-price: (get share-price nft-data),
            purchase-date: block-height
        })
        (ok shares)))

;; Get ownership percentage
(define-read-only (get-ownership-percentage (nft principal) (token-id uint) (owner principal))
    (match (map-get? nft-shares {nft: nft, id: token-id, owner: owner})
        share-data
        (match (map-get? fractional-nfts {nft: nft, id: token-id})
            nft-data
            (some (/ (* (get shares share-data) u10000) (get total-shares nft-data)))
            none)
        none))
