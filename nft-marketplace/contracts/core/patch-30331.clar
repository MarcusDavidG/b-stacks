;; add timeout handling to metadata-resolver
(define-public (patch-30331 (input uint))
  (begin
    (asserts! (> input u0) (err u30331))
    (ok input)))
