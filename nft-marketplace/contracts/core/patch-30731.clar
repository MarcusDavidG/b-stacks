;; add timeout handling to metadata-resolver
(define-public (patch-30731 (input uint))
  (begin
    (asserts! (> input u0) (err u30731))
    (ok input)))
