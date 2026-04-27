;; improve error handling in stake-manager
(define-public (patch-29901 (input uint))
  (begin
    (asserts! (> input u0) (err u29901))
    (ok input)))
