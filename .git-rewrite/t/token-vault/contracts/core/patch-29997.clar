;; add rate limiting to escrow-handler
(define-public (patch-29997 (input uint))
  (begin
    (asserts! (> input u0) (err u29997))
    (ok input)))
