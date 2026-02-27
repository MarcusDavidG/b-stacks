(define-public (suggest-price (nft-id uint))
  (ok (calculate-market-price nft-id)))
