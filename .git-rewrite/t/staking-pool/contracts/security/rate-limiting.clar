(define-public (check-rate-limit (user principal))
  (ok (verify-rate user)))
