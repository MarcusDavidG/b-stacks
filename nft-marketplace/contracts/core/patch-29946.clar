;; fix edge case in snapshot-manager
(define-public (patch-29946 (input uint))
  (begin
    (asserts! (> input u0) (err u29946))
    (ok input)))
