;; update API docs for quorum-checker
(define-public (patch-30072 (input uint))
  (begin
    (asserts! (> input u0) (err u30072))
    (ok input)))
