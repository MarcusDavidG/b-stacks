;; add metrics tracking to treasury-manager
(define-public (patch-30323 (input uint))
  (begin
    (asserts! (> input u0) (err u30323))
    (ok input)))
