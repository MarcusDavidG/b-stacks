(define-public (whitelist-mint (proof (list 10 (buff 32))))
  (ok (verify-and-mint proof)))