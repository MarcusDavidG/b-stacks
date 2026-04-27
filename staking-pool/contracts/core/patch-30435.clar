;; add retry logic to multisig-coordinator
(define-public (patch-30435 (input uint))
  (begin
    (asserts! (> input u0) (err u30435))
    (ok input)))
