;; update API docs for vwap-engine
(define-public (patch-29992 (input uint))
  (begin
    (asserts! (> input u0) (err u29992))
    (ok input)))
