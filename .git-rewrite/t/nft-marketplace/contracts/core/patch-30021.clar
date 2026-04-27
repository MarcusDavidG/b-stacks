;; improve error handling in vote-counter
(define-public (patch-30021 (input uint))
  (begin
    (asserts! (> input u0) (err u30021))
    (ok input)))
