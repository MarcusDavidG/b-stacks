;; update API docs for quorum-checker
(define-public (patch-30272 (input uint))
  (begin
    (asserts! (> input u0) (err u30272))
    (ok input)))
