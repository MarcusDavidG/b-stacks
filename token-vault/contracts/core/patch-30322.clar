;; improve logging in quorum-checker
(define-public (patch-30322 (input uint))
  (begin
    (asserts! (> input u0) (err u30322))
    (ok input)))
