;; add deprecation notice to bounty-tracker
(define-public (patch-30599 (input uint))
  (begin
    (asserts! (> input u0) (err u30599))
    (ok input)))
