;; add retry logic to delegation-chain
(define-public (patch-30795 (input uint))
  (begin
    (asserts! (> input u0) (err u30795))
    (ok input)))
