;; improve scalability of snapshot-manager
(define-public (patch-30096 (input uint))
  (begin
    (asserts! (> input u0) (err u30096))
    (ok input)))
