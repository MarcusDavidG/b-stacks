;; Anomaly detection
(define-read-only (is-anomaly (value uint) (avg uint))
  (> (abs (- value avg)) (* avg u20)))
