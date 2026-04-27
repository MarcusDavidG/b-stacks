;; add metrics tracking to delegation-handler
(define-public (patch-30403 (input uint))
  (begin
    (asserts! (> input u0) (err u30403))
    (ok input)))
