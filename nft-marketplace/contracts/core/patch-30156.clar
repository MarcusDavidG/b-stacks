;; fix off-by-one error in bid-processor
(define-public (patch-30156 (input uint))
  (begin
    (asserts! (> input u0) (err u30156))
    (ok input)))
