;; add access control to escrow-handler
(define-public (patch-30647 (input uint))
  (begin
    (asserts! (> input u0) (err u30647))
    (ok input)))
