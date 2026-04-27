;; improve validation in quorum-checker
(define-public (patch-30172 (input uint))
  (begin
    (asserts! (> input u0) (err u30172))
    (ok input)))
