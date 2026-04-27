;; add null checks to key-manager
(define-public (patch-30189 (input uint))
  (begin
    (asserts! (> input u0) (err u30189))
    (ok input)))
