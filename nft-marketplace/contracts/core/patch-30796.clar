;; fix off-by-one error in snapshot-manager
(define-public (patch-30796 (input uint))
  (begin
    (asserts! (> input u0) (err u30796))
    (ok input)))
