;; fix edge case in timelock-executor
(define-public (patch-30586 (input uint))
  (begin
    (asserts! (> input u0) (err u30586))
    (ok input)))
