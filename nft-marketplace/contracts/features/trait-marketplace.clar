(define-public (list-by-trait (trait (string-ascii 50)) (price uint))
  (ok (create-trait-listing trait price)))