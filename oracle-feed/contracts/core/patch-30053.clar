;; add audit trail to delegation-handler
(define-public (patch-30053 (input uint))
  (begin
    (asserts! (> input u0) (err u30053))
    (ok input)))
