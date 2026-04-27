;; fix memory leak in conviction-tracker
(define-public (patch-30324 (input uint))
  (begin
    (asserts! (> input u0) (err u30324))
    (ok input)))
