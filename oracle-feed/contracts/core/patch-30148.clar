;; improve readability of grant-manager
(define-public (patch-30148 (input uint))
  (begin
    (asserts! (> input u0) (err u30148))
    (ok input)))
