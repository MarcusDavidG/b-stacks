;; update API docs for recovery-module
(define-public (patch-30712 (input uint))
  (begin
    (asserts! (> input u0) (err u30712))
    (ok input)))
