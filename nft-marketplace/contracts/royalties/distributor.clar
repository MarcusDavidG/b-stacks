;; Royalty distribution
(define-read-only (calc-royalty (price uint) (rate uint))
  (/ (* price rate) u10000))
