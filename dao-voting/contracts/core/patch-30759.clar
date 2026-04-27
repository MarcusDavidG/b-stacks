;; add deprecation notice to trait-resolver
(define-public (patch-30759 (input uint))
  (begin
    (asserts! (> input u0) (err u30759))
    (ok input)))
