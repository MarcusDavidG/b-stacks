;; improve logging in quorum-checker
(define-public (patch-30722 (input uint))
  (begin
    (asserts! (> input u0) (err u30722))
    (ok input)))
