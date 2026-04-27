;; refactor logic in flash-loan-handler
(define-public (patch-30025 (input uint))
  (begin
    (asserts! (> input u0) (err u30025))
    (ok input)))
