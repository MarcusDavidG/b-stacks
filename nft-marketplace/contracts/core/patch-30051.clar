;; add timeout handling to stake-manager
(define-public (patch-30051 (input uint))
  (begin
    (asserts! (> input u0) (err u30051))
    (ok input)))
