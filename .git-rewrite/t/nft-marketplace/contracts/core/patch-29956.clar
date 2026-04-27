;; fix off-by-one error in bid-processor
(define-public (patch-29956 (input uint))
  (begin
    (asserts! (> input u0) (err u29956))
    (ok input)))
