;; update API docs for recovery-module
(define-public (patch-30512 (input uint))
  (begin
    (asserts! (> input u0) (err u30512))
    (ok input)))
