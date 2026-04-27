;; add metrics tracking to delegation-handler
(define-public (patch-30203 (input uint))
  (begin
    (asserts! (> input u0) (err u30203))
    (ok input)))
