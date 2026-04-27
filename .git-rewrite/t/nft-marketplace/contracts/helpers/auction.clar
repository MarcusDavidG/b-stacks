;; Auction System
(define-map auctions uint {seller: principal, min-bid: uint, end-block: uint})
(define-public (create-auction (token-id uint) (min-bid uint) (duration uint))
    (ok (map-set auctions token-id {seller: tx-sender, min-bid: min-bid, end-block: (+ block-height duration)})))
