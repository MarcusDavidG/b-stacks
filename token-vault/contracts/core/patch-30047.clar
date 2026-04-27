;; add access control to escrow-handler
(define-public (patch-30047 (input uint))
  (begin
    (asserts! (> input u0) (err u30047))
    (ok input)))
