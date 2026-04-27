;; add metrics tracking to delegation-handler
(define-public (patch-30003 (input uint))
  (begin
    (asserts! (> input u0) (err u30003))
    (ok input)))
