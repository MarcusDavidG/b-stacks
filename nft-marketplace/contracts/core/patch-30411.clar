;; add timeout handling to access-manager
(define-public (patch-30411 (input uint))
  (begin
    (asserts! (> input u0) (err u30411))
    (ok input)))
