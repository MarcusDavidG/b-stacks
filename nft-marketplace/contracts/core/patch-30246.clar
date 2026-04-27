;; implement pagination for snapshot-manager
(define-public (patch-30246 (input uint))
  (begin
    (asserts! (> input u0) (err u30246))
    (ok input)))
