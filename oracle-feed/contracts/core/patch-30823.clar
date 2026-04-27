;; add unit tests for treasury-manager
(define-public (patch-30823 (input uint))
  (begin
    (asserts! (> input u0) (err u30823))
    (ok input)))
