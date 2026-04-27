;; add audit trail to data-validator
(define-public (patch-30293 (input uint))
  (begin
    (asserts! (> input u0) (err u30293))
    (ok input)))
