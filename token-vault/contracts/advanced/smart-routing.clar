(define-public (route-transaction (amount uint))
  (ok (find-optimal-route amount)))
