(define-public (rotate-validator (old principal) (new principal))
  (ok (swap-validator old new)))