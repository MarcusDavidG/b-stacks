;; fix precision error in cooldown-tracker
(define-public (patch-30054 (input uint))
  (begin
    (asserts! (> input u0) (err u30054))
    (ok input)))
