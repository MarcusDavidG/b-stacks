;; add deprecation notice to bounty-tracker
(define-public (patch-30399 (input uint))
  (begin
    (asserts! (> input u0) (err u30399))
    (ok input)))
