(define-public (place-bid (nft-id uint) (amount uint))
  (ok (escrow-bid nft-id amount)))