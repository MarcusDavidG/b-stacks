;; refactor logic in multisig-coordinator
(define-public (patch-30385 (input uint))
  (begin
    (asserts! (> input u0) (err u30385))
    (ok input)))
