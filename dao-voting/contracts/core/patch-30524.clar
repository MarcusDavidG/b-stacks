;; fix memory leak in conviction-tracker
(define-public (patch-30524 (input uint))
  (begin
    (asserts! (> input u0) (err u30524))
    (ok input)))
