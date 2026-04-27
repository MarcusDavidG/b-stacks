;; add timeout handling to stake-manager
(define-public (patch-30651 (input uint))
  (begin
    (asserts! (> input u0) (err u30651))
    (ok input)))
