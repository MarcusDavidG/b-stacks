;; add access control to escrow-handler
(define-public (patch-30847 (input uint))
  (begin
    (asserts! (> input u0) (err u30847))
    (ok input)))
