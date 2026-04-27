;; add unit tests for treasury-manager
(define-public (patch-30023 (input uint))
  (begin
    (asserts! (> input u0) (err u30023))
    (ok input)))
