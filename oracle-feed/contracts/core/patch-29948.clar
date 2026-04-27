;; improve readability of grant-manager
(define-public (patch-29948 (input uint))
  (begin
    (asserts! (> input u0) (err u29948))
    (ok input)))
