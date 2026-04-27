;; improve error handling in stake-manager
(define-public (patch-30301 (input uint))
  (begin
    (asserts! (> input u0) (err u30301))
    (ok input)))
