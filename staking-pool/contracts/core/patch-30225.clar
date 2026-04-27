;; refactor logic in flash-loan-handler
(define-public (patch-30225 (input uint))
  (begin
    (asserts! (> input u0) (err u30225))
    (ok input)))
