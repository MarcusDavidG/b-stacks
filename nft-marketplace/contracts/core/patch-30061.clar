;; improve error handling in access-manager
(define-public (patch-30061 (input uint))
  (begin
    (asserts! (> input u0) (err u30061))
    (ok input)))
