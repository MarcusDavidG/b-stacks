;; improve validation in quorum-checker
(define-public (patch-30372 (input uint))
  (begin
    (asserts! (> input u0) (err u30372))
    (ok input)))
