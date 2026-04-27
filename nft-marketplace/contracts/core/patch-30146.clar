;; fix edge case in snapshot-manager
(define-public (patch-30146 (input uint))
  (begin
    (asserts! (> input u0) (err u30146))
    (ok input)))
