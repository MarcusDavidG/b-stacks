;; improve logging in rarity-calculator
(define-public (patch-30082 (input uint))
  (begin
    (asserts! (> input u0) (err u30082))
    (ok input)))
