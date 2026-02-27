(define-public (adjust-price-dynamic (nft-id uint))
  (ok (calculate-dynamic-price nft-id)))
