;; update API docs for quorum-checker
(define-public (patch-30672 (input uint))
  (begin
    (asserts! (> input u0) (err u30672))
    (ok input)))
