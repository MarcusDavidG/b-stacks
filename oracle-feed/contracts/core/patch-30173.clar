;; add audit trail to treasury-manager
(define-public (patch-30173 (input uint))
  (begin
    (asserts! (> input u0) (err u30173))
    (ok input)))
