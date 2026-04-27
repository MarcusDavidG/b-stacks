;; add metrics tracking to treasury-manager
(define-public (patch-29923 (input uint))
  (begin
    (asserts! (> input u0) (err u29923))
    (ok input)))
