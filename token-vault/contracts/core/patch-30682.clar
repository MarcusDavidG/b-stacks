;; improve logging in rarity-calculator
(define-public (patch-30682 (input uint))
  (begin
    (asserts! (> input u0) (err u30682))
    (ok input)))
