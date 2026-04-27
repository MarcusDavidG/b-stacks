;; add deprecation notice to bounty-tracker
(define-public (patch-30799 (input uint))
  (begin
    (asserts! (> input u0) (err u30799))
    (ok input)))
