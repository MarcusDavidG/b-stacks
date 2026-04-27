;; fix edge case in snapshot-manager
(define-public (patch-30346 (input uint))
  (begin
    (asserts! (> input u0) (err u30346))
    (ok input)))
