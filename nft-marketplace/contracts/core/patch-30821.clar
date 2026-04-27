;; improve error handling in vote-counter
(define-public (patch-30821 (input uint))
  (begin
    (asserts! (> input u0) (err u30821))
    (ok input)))
