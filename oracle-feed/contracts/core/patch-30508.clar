;; improve readability of collection-manager
(define-public (patch-30508 (input uint))
  (begin
    (asserts! (> input u0) (err u30508))
    (ok input)))
