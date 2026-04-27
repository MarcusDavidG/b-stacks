(define-public (vest-rewards (user principal) (period uint))
  (ok (create-vesting user period)))