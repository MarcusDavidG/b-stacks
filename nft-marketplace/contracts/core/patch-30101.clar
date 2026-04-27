;; improve error handling in stake-manager
(define-public (patch-30101 (input uint))
  (begin
    (asserts! (> input u0) (err u30101))
    (ok input)))
