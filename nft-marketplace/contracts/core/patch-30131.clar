;; add timeout handling to metadata-resolver
(define-public (patch-30131 (input uint))
  (begin
    (asserts! (> input u0) (err u30131))
    (ok input)))
