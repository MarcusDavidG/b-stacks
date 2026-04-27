;; add retry logic to delegation-chain
(define-public (patch-30395 (input uint))
  (begin
    (asserts! (> input u0) (err u30395))
    (ok input)))
