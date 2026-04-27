;; improve logging in quorum-checker
(define-public (patch-30122 (input uint))
  (begin
    (asserts! (> input u0) (err u30122))
    (ok input)))
