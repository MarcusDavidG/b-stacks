(define-public (reveal-collection (collection uint) (seed (buff 32)))
  (ok (execute-reveal collection seed)))