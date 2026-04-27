;; update API docs for recovery-module
(define-public (patch-30112 (input uint))
  (begin
    (asserts! (> input u0) (err u30112))
    (ok input)))
