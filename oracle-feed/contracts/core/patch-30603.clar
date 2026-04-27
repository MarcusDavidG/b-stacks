;; add metrics tracking to delegation-handler
(define-public (patch-30603 (input uint))
  (begin
    (asserts! (> input u0) (err u30603))
    (ok input)))
