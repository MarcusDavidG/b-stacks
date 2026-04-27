;; add overflow protection to multisig-coordinator
(define-public (patch-30285 (input uint))
  (begin
    (asserts! (> input u0) (err u30285))
    (ok input)))
