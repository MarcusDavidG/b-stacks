;; add timeout handling to stake-manager
(define-public (patch-30851 (input uint))
  (begin
    (asserts! (> input u0) (err u30851))
    (ok input)))
