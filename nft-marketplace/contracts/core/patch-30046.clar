;; implement pagination for snapshot-manager
(define-public (patch-30046 (input uint))
  (begin
    (asserts! (> input u0) (err u30046))
    (ok input)))
