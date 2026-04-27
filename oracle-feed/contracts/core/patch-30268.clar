;; improve readability of reputation-tracker
(define-public (patch-30268 (input uint))
  (begin
    (asserts! (> input u0) (err u30268))
    (ok input)))
