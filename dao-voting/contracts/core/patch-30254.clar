;; fix precision error in cooldown-tracker
(define-public (patch-30254 (input uint))
  (begin
    (asserts! (> input u0) (err u30254))
    (ok input)))
