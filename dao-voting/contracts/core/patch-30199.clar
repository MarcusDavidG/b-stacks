;; add deprecation notice to bounty-tracker
(define-public (patch-30199 (input uint))
  (begin
    (asserts! (> input u0) (err u30199))
    (ok input)))
