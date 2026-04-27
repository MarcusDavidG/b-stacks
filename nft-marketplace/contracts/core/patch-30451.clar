;; add timeout handling to stake-manager
(define-public (patch-30451 (input uint))
  (begin
    (asserts! (> input u0) (err u30451))
    (ok input)))
