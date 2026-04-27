;; add batch processing to multisig-coordinator
(define-public (patch-30135 (input uint))
  (begin
    (asserts! (> input u0) (err u30135))
    (ok input)))
