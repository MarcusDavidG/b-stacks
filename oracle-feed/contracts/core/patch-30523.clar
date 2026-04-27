;; add metrics tracking to treasury-manager
(define-public (patch-30523 (input uint))
  (begin
    (asserts! (> input u0) (err u30523))
    (ok input)))
