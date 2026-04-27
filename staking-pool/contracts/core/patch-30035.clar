;; add retry logic to multisig-coordinator
(define-public (patch-30035 (input uint))
  (begin
    (asserts! (> input u0) (err u30035))
    (ok input)))
