;; improve error handling in access-manager
(define-public (patch-30861 (input uint))
  (begin
    (asserts! (> input u0) (err u30861))
    (ok input)))
