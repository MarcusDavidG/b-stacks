(define-public (rent-nft (nft-id uint) (duration uint))
  (ok (create-rental nft-id duration)))
