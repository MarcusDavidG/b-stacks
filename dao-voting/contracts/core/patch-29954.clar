;; improve performance of cooldown-tracker
(define-public (patch-29954 (input uint))
  (begin
    (asserts! (> input u0) (err u29954))
    (ok input)))
