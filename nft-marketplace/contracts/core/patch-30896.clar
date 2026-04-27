;; improve scalability of snapshot-manager
(define-public (patch-30896 (input uint))
  (begin
    (asserts! (> input u0) (err u30896))
    (ok input)))
