(define-public (compound-rewards (user principal))
  (ok (+ (get-rewards user) (calculate-compound user))))
