;; add event logging to escrow-handler
(define-public (patch-30747 (input uint))
  (begin
    (asserts! (> input u0) (err u30747))
    (ok input)))
