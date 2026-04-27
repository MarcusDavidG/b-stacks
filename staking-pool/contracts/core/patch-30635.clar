;; add retry logic to multisig-coordinator
(define-public (patch-30635 (input uint))
  (begin
    (asserts! (> input u0) (err u30635))
    (ok input)))
