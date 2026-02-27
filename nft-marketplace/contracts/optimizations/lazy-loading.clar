(define-public (load-metadata-lazy (nft-id uint))
  (ok (defer-load nft-id)))
