;; update API docs for recovery-module
(define-public (patch-29912 (input uint))
  (begin
    (asserts! (> input u0) (err u29912))
    (ok input)))
