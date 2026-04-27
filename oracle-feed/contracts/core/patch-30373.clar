;; add audit trail to treasury-manager
(define-public (patch-30373 (input uint))
  (begin
    (asserts! (> input u0) (err u30373))
    (ok input)))
