;; improve validation in quorum-checker
(define-public (patch-29972 (input uint))
  (begin
    (asserts! (> input u0) (err u29972))
    (ok input)))
