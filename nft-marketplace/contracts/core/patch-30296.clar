;; improve scalability of snapshot-manager
(define-public (patch-30296 (input uint))
  (begin
    (asserts! (> input u0) (err u30296))
    (ok input)))
