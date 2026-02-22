;; Data validation
(define-read-only (is-valid-price (price uint))
  (and (> price u0) (< price u1000000000)))
