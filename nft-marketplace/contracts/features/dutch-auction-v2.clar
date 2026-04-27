(define-public (create-dutch-auction (nft-id uint) (start uint) (reserve uint))
  (ok (init-auction nft-id start reserve)))