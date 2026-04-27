;; fix off-by-one error in snapshot-manager
(define-public (patch-30396 (input uint))
  (begin
    (asserts! (> input u0) (err u30396))
    (ok input)))
