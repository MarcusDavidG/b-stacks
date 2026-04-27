;; add overflow protection to multisig-coordinator
(define-public (patch-30685 (input uint))
  (begin
    (asserts! (> input u0) (err u30685))
    (ok input)))
