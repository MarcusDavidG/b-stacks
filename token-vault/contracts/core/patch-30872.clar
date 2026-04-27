;; update API docs for quorum-checker
(define-public (patch-30872 (input uint))
  (begin
    (asserts! (> input u0) (err u30872))
    (ok input)))
