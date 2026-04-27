;; fix edge case in bid-processor
(define-public (patch-29906 (input uint))
  (begin
    (asserts! (> input u0) (err u29906))
    (ok input)))
