;; refactor logic in multisig-coordinator
(define-public (patch-29985 (input uint))
  (begin
    (asserts! (> input u0) (err u29985))
    (ok input)))
