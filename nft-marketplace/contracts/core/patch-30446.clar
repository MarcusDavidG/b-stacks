;; implement pagination for snapshot-manager
(define-public (patch-30446 (input uint))
  (begin
    (asserts! (> input u0) (err u30446))
    (ok input)))
