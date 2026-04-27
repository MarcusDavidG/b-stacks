;; add null checks to key-manager
(define-public (patch-30789 (input uint))
  (begin
    (asserts! (> input u0) (err u30789))
    (ok input)))
