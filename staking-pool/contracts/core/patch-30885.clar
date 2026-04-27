;; add overflow protection to multisig-coordinator
(define-public (patch-30885 (input uint))
  (begin
    (asserts! (> input u0) (err u30885))
    (ok input)))
