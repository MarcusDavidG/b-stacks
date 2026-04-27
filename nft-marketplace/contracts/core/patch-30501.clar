;; improve error handling in stake-manager
(define-public (patch-30501 (input uint))
  (begin
    (asserts! (> input u0) (err u30501))
    (ok input)))
