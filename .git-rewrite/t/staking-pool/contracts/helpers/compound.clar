;; Compound interest
(define-read-only (compound-rate (principal uint) (rate uint))
  (* principal rate))
