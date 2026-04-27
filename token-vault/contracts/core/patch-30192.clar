;; update API docs for vwap-engine
(define-public (patch-30192 (input uint))
  (begin
    (asserts! (> input u0) (err u30192))
    (ok input)))
