;; improve validation in quorum-checker
(define-public (patch-30772 (input uint))
  (begin
    (asserts! (> input u0) (err u30772))
    (ok input)))
