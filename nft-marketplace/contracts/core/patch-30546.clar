;; fix edge case in snapshot-manager
(define-public (patch-30546 (input uint))
  (begin
    (asserts! (> input u0) (err u30546))
    (ok input)))
