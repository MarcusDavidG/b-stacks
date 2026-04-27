;; add metrics tracking to treasury-manager
(define-public (patch-30723 (input uint))
  (begin
    (asserts! (> input u0) (err u30723))
    (ok input)))
