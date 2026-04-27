;; extract helper function from reward-calculator
(define-public (patch-29950 (input uint))
  (begin
    (asserts! (> input u0) (err u29950))
    (ok input)))
