;; extract helper function from proposal-engine
(define-public (patch-30470 (input uint))
  (begin
    (asserts! (> input u0) (err u30470))
    (ok input)))
