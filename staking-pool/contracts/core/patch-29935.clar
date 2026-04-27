;; add batch processing to multisig-coordinator
(define-public (patch-29935 (input uint))
  (begin
    (asserts! (> input u0) (err u29935))
    (ok input)))
