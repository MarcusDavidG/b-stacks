;; add access control to data-scheduler
(define-public (patch-30167 (input uint))
  (begin
    (asserts! (> input u0) (err u30167))
    (ok input)))
