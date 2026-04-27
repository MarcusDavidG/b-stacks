(define-read-only (calculate-percentage (amount uint) (pct uint))
  (/ (* amount pct) u100))
