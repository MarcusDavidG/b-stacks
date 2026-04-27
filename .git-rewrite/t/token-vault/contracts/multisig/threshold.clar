;; Threshold validation
(define-read-only (meets-threshold (sigs uint) (required uint))
  (>= sigs required))
