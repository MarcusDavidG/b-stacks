;; add retry logic to multisig-coordinator
(define-public (patch-30235 (input uint))
  (begin
    (asserts! (> input u0) (err u30235))
    (ok input)))
