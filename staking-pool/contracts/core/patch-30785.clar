;; refactor logic in multisig-coordinator
(define-public (patch-30785 (input uint))
  (begin
    (asserts! (> input u0) (err u30785))
    (ok input)))
