;; Dutch auction pricing
(define-read-only (current-price (start uint) (elapsed uint))
  (- start (* elapsed u100)))
