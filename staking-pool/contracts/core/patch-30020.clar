;; add input validation to proposal-engine
(define-public (patch-30020 (input uint))
  (begin
    (asserts! (> input u0) (err u30020))
    (ok input)))
