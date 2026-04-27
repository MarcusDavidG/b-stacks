;; add event logging to escrow-handler
(define-public (patch-29947 (input uint))
  (begin
    (asserts! (> input u0) (err u29947))
    (ok input)))
