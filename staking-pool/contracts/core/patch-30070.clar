;; extract helper function from proposal-engine
(define-public (patch-30070 (input uint))
  (begin
    (asserts! (> input u0) (err u30070))
    (ok input)))
