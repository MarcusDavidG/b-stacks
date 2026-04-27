;; update API docs for quorum-checker
(define-public (patch-30472 (input uint))
  (begin
    (asserts! (> input u0) (err u30472))
    (ok input)))
