;; Dutch Auction System for NFT Marketplace
;; Price decreases over time until sold or reserve met

;; Constants
(define-constant ERR-AUCTION-NOT-FOUND (err u200))
(define-constant ERR-AUCTION-ENDED (err u201))
(define-constant ERR-PRICE-TOO-LOW (err u202))

;; Data Maps
(define-map dutch-auctions {nft: principal, id: uint} {
    seller: principal,
    start-price: uint,
    end-price: uint,
    start-time: uint,
    duration: uint,
    price-drop-interval: uint,
    active: bool
})

;; Calculate current Dutch auction price
(define-read-only (get-current-dutch-price (nft principal) (token-id uint))
    (match (map-get? dutch-auctions {nft: nft, id: token-id})
        auction-data
        (let ((elapsed-time (- block-height (get start-time auction-data)))
              (total-duration (get duration auction-data))
              (price-range (- (get start-price auction-data) (get end-price auction-data))))
            (if (>= elapsed-time total-duration)
                (get end-price auction-data)
                (let ((price-drop (* price-range (/ elapsed-time total-duration))))
                    (- (get start-price auction-data) price-drop))))
        (err ERR-AUCTION-NOT-FOUND)))

;; Start Dutch auction
(define-public (start-dutch-auction (nft principal) (token-id uint) (start-price uint) (end-price uint) (duration uint))
    (begin
        (map-set dutch-auctions {nft: nft, id: token-id} {
            seller: tx-sender,
            start-price: start-price,
            end-price: end-price,
            start-time: block-height,
            duration: duration,
            price-drop-interval: (/ duration u100),
            active: true
        })
        (ok true)))
