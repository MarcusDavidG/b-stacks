;; fix precision error in cooldown-tracker
(define-public (patch-30654 (input uint))
  (begin
    (asserts! (> input u0) (err u30654))
    (ok input)))
