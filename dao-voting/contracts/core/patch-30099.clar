;; add snapshot support to bounty-tracker
(define-public (patch-30099 (input uint))
  (begin
    (asserts! (> input u0) (err u30099))
    (ok input)))
