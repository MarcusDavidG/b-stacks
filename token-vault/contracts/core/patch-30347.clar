;; add event logging to escrow-handler
(define-public (patch-30347 (input uint))
  (begin
    (asserts! (> input u0) (err u30347))
    (ok input)))
