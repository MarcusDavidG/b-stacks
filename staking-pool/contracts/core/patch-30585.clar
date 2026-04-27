;; refactor logic in multisig-coordinator
(define-public (patch-30585 (input uint))
  (begin
    (asserts! (> input u0) (err u30585))
    (ok input)))
