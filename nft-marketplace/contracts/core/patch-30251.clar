;; add timeout handling to stake-manager
(define-public (patch-30251 (input uint))
  (begin
    (asserts! (> input u0) (err u30251))
    (ok input)))
