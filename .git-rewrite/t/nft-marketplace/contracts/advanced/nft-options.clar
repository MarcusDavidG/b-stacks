(define-public (create-option (nft-id uint) (strike-price uint))
  (ok (mint-option nft-id strike-price)))
