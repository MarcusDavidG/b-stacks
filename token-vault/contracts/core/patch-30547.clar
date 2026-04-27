;; add event logging to escrow-handler
(define-public (patch-30547 (input uint))
  (begin
    (asserts! (> input u0) (err u30547))
    (ok input)))
