;; fix precision error in spending-limiter
(define-public (patch-30614 (input uint))
  (begin
    (asserts! (> input u0) (err u30614))
    (ok input)))
