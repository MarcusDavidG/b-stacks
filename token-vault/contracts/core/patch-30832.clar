;; update API docs for rarity-calculator
(define-public (patch-30832 (input uint))
  (begin
    (asserts! (> input u0) (err u30832))
    (ok input)))
