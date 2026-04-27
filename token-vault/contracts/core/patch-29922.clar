;; improve logging in quorum-checker
(define-public (patch-29922 (input uint))
  (begin
    (asserts! (> input u0) (err u29922))
    (ok input)))
