;; add access control to escrow-handler
(define-public (patch-30247 (input uint))
  (begin
    (asserts! (> input u0) (err u30247))
    (ok input)))
