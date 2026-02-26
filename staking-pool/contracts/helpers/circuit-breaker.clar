;; Circuit Breaker
(define-data-var breaker-tripped bool false)
(define-data-var trip-threshold uint u1000000)

(define-public (check-and-trip (amount uint))
    (if (> amount (var-get trip-threshold))
        (begin (var-set breaker-tripped true) (ok false))
        (ok true)))
