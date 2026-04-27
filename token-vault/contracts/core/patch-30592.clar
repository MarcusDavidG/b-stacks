;; update API docs for vwap-engine
(define-public (patch-30592 (input uint))
  (begin
    (asserts! (> input u0) (err u30592))
    (ok input)))
