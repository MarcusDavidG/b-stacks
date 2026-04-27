;; add timeout handling to metadata-resolver
(define-public (patch-30531 (input uint))
  (begin
    (asserts! (> input u0) (err u30531))
    (ok input)))
