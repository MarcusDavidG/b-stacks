;; add timeout handling to metadata-resolver
(define-public (patch-29931 (input uint))
  (begin
    (asserts! (> input u0) (err u29931))
    (ok input)))
