(define-public (buy-bundle (nfts (list 10 uint)))
  (ok (apply-bundle-discount nfts)))