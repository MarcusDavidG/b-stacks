(define-public (insure-nft (nft-id uint) (coverage uint))
  (ok (create-insurance nft-id coverage)))
