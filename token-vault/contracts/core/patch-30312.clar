;; update API docs for recovery-module
(define-public (patch-30312 (input uint))
  (begin
    (asserts! (> input u0) (err u30312))
    (ok input)))
