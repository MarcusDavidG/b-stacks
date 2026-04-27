(define-public (set-collection-royalty (collection uint) (rate uint))
  (ok (configure-royalty collection rate)))