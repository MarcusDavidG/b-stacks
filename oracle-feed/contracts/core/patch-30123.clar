;; add metrics tracking to treasury-manager
(define-public (patch-30123 (input uint))
  (begin
    (asserts! (> input u0) (err u30123))
    (ok input)))
