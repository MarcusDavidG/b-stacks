;; fix edge case in snapshot-manager
(define-public (patch-30746 (input uint))
  (begin
    (asserts! (> input u0) (err u30746))
    (ok input)))
