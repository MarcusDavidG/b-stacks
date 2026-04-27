;; add unit tests for treasury-manager
(define-public (patch-30423 (input uint))
  (begin
    (asserts! (> input u0) (err u30423))
    (ok input)))
