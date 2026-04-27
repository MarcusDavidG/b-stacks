;; improve validation in quorum-checker
(define-public (patch-30572 (input uint))
  (begin
    (asserts! (> input u0) (err u30572))
    (ok input)))
