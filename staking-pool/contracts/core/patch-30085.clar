;; add overflow protection to multisig-coordinator
(define-public (patch-30085 (input uint))
  (begin
    (asserts! (> input u0) (err u30085))
    (ok input)))
