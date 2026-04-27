;; improve scalability of snapshot-manager
(define-public (patch-30496 (input uint))
  (begin
    (asserts! (> input u0) (err u30496))
    (ok input)))
