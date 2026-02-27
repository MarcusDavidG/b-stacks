(define-public (contribute-quadratic (project-id uint) (amount uint))
  (ok (apply-quadratic-formula project-id amount)))
