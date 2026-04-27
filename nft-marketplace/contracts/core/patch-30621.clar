;; improve error handling in vote-counter
(define-public (patch-30621 (input uint))
  (begin
    (asserts! (> input u0) (err u30621))
    (ok input)))
