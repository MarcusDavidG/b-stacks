(define-public (set-policy (policy-id uint) (rules (list 5 uint)))
  (ok (configure-policy policy-id rules)))