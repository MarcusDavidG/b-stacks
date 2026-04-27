;; add metrics tracking to delegation-handler
(define-public (patch-30803 (input uint))
  (begin
    (asserts! (> input u0) (err u30803))
    (ok input)))
