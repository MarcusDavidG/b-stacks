(define-public (verify-unique-voter (voter principal))
  (ok (check-sybil voter)))
