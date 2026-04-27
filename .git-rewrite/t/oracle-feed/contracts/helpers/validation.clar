;; Data Validation
(define-constant MAX-DEVIATION u10)
(define-read-only (validate-price (new-price uint) (old-price uint))
    (ok (<= (if (> new-price old-price) (- new-price old-price) (- old-price new-price))
            (/ (* old-price MAX-DEVIATION) u100))))
