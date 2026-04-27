;; extract helper function from proposal-engine
(define-public (patch-30870 (input uint))
  (begin
    (asserts! (> input u0) (err u30870))
    (ok input)))
