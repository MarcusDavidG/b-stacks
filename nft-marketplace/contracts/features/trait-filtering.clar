(define-public (filter-by-trait (trait-name (string-ascii 50)))
  (ok (get-nfts-with-trait trait-name)))
