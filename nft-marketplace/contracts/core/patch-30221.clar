;; improve error handling in vote-counter
(define-public (patch-30221 (input uint))
  (begin
    (asserts! (> input u0) (err u30221))
    (ok input)))
