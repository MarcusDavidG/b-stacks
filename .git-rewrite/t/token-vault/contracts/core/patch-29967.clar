;; add access control to data-scheduler
(define-public (patch-29967 (input uint))
  (begin
    (asserts! (> input u0) (err u29967))
    (ok input)))
