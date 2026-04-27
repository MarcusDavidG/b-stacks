(define-public (lend-nft (nft-id uint) (duration uint))
  (ok (create-lending nft-id duration)))
