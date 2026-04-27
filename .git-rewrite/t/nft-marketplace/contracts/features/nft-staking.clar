(define-public (stake-nft (nft-id uint))
  (ok (lock-nft nft-id)))
