;; improve logging in rarity-calculator
(define-public (patch-30482 (input uint))
  (begin
    (asserts! (> input u0) (err u30482))
    (ok input)))
