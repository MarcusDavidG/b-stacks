;; fix off-by-one error in snapshot-manager
(define-public (patch-29996 (input uint))
  (begin
    (asserts! (> input u0) (err u29996))
    (ok input)))
