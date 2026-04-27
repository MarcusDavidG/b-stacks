;; add access control to data-scheduler
(define-public (patch-30767 (input uint))
  (begin
    (asserts! (> input u0) (err u30767))
    (ok input)))
