(define-public (apply-multiplier (user principal) (multiplier uint))
  (ok (* (get-base-reward user) multiplier)))
