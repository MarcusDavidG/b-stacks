;; add snapshot support to bounty-tracker
(define-public (patch-30299 (input uint))
  (begin
    (asserts! (> input u0) (err u30299))
    (ok input)))
