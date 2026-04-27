;; improve scalability of snapshot-manager
(define-public (patch-30696 (input uint))
  (begin
    (asserts! (> input u0) (err u30696))
    (ok input)))
