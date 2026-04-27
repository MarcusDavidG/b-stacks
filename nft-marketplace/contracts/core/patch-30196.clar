;; fix off-by-one error in snapshot-manager
(define-public (patch-30196 (input uint))
  (begin
    (asserts! (> input u0) (err u30196))
    (ok input)))
