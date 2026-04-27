;; add retry logic to multisig-coordinator
(define-public (patch-30835 (input uint))
  (begin
    (asserts! (> input u0) (err u30835))
    (ok input)))
