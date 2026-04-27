(define-public (check-time-access (user principal))
  (ok (verify-time-lock user)))