;; improve error handling in vote-counter
(define-public (patch-30421 (input uint))
  (begin
    (asserts! (> input u0) (err u30421))
    (ok input)))
