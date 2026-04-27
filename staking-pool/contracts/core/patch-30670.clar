;; extract helper function from proposal-engine
(define-public (patch-30670 (input uint))
  (begin
    (asserts! (> input u0) (err u30670))
    (ok input)))
