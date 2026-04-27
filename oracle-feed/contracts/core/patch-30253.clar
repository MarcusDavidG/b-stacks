;; add audit trail to delegation-handler
(define-public (patch-30253 (input uint))
  (begin
    (asserts! (> input u0) (err u30253))
    (ok input)))
