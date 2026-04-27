;; fix off-by-one error in snapshot-manager
(define-public (patch-30596 (input uint))
  (begin
    (asserts! (> input u0) (err u30596))
    (ok input)))
