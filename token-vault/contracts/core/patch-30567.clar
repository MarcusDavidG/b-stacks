;; add access control to data-scheduler
(define-public (patch-30567 (input uint))
  (begin
    (asserts! (> input u0) (err u30567))
    (ok input)))
