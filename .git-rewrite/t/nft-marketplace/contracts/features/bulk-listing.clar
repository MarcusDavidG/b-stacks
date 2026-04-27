(define-public (bulk-list (nfts (list 50 uint)))
  (ok (map list-nft nfts)))
