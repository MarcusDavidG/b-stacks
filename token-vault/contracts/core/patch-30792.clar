;; update API docs for vwap-engine
(define-public (patch-30792 (input uint))
  (begin
    (asserts! (> input u0) (err u30792))
    (ok input)))
