;; Advanced Bidding System
(define-map bids {nft: principal, id: uint, bidder: principal} {amount: uint, expires-at: uint})
(define-public (place-bid (nft principal) (token-id uint) (amount uint) (duration uint))
    (map-set bids {nft: nft, id: token-id, bidder: tx-sender} {amount: amount, expires-at: (+ block-height duration)})
    (ok true))
