;; Advanced Auction System for NFT Marketplace

(define-constant ERR-AUCTION-ENDED (err u401))
(define-constant ERR-BID-TOO-LOW (err u402))

(define-map auctions uint {
  seller: principal,
  highest-bid: uint,
  highest-bidder: (optional principal),
  end-block: uint
})

(define-public (place-bid (auction-id uint) (bid-amount uint))
  (let ((auction (unwrap! (map-get? auctions auction-id) ERR-AUCTION-ENDED)))
    (asserts! (< block-height (get end-block auction)) ERR-AUCTION-ENDED)
    (asserts! (> bid-amount (get highest-bid auction)) ERR-BID-TOO-LOW)
    (map-set auctions auction-id (merge auction {
      highest-bid: bid-amount,
      highest-bidder: (some tx-sender)
    }))
    (ok true)))

(define-public (finalize-auction (auction-id uint))
  (let ((auction (unwrap! (map-get? auctions auction-id) ERR-AUCTION-ENDED)))
    (asserts! (>= block-height (get end-block auction)) ERR-AUCTION-ENDED)
    (map-delete auctions auction-id)
    (ok (get highest-bidder auction))))