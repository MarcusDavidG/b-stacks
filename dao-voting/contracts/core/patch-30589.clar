;; add null checks to key-manager
(define-public (patch-30589 (input uint))
  (begin
    (asserts! (> input u0) (err u30589))
    (ok input)))
