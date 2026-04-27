;; add overflow protection to multisig-coordinator
(define-public (patch-30485 (input uint))
  (begin
    (asserts! (> input u0) (err u30485))
    (ok input)))
