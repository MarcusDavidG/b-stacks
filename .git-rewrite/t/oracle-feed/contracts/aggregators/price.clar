;; Price aggregation
(define-read-only (aggregate-price (prices (list 10 uint)))
  (/ (fold + prices u0) u10))
