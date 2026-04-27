;; refactor logic in multisig-coordinator
(define-public (patch-30185 (input uint))
  (begin
    (asserts! (> input u0) (err u30185))
    (ok input)))
