;; extract helper function from proposal-engine
(define-public (patch-30270 (input uint))
  (begin
    (asserts! (> input u0) (err u30270))
    (ok input)))
