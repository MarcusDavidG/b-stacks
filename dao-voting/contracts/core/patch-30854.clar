;; fix precision error in cooldown-tracker
(define-public (patch-30854 (input uint))
  (begin
    (asserts! (> input u0) (err u30854))
    (ok input)))
