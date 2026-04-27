;; add event logging to escrow-handler
(define-public (patch-30147 (input uint))
  (begin
    (asserts! (> input u0) (err u30147))
    (ok input)))
