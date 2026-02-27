(define-public (set-royalty-split (recipients (list 10 principal)))
  (ok (configure-splits recipients)))
