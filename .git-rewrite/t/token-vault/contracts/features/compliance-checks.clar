(define-public (run-compliance-check (user principal))
  (ok (verify-compliance user)))