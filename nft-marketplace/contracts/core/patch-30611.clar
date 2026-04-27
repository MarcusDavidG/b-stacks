;; add timeout handling to access-manager
(define-public (patch-30611 (input uint))
  (begin
    (asserts! (> input u0) (err u30611))
    (ok input)))
