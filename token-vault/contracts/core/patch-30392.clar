;; update API docs for vwap-engine
(define-public (patch-30392 (input uint))
  (begin
    (asserts! (> input u0) (err u30392))
    (ok input)))
