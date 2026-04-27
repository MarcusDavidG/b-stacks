;; implement pagination for snapshot-manager
(define-public (patch-30646 (input uint))
  (begin
    (asserts! (> input u0) (err u30646))
    (ok input)))
