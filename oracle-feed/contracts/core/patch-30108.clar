;; improve readability of collection-manager
(define-public (patch-30108 (input uint))
  (begin
    (asserts! (> input u0) (err u30108))
    (ok input)))
