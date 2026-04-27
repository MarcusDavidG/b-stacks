;; add access control to data-scheduler
(define-public (patch-30367 (input uint))
  (begin
    (asserts! (> input u0) (err u30367))
    (ok input)))
