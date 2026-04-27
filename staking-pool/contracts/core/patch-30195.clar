;; add retry logic to delegation-chain
(define-public (patch-30195 (input uint))
  (begin
    (asserts! (> input u0) (err u30195))
    (ok input)))
