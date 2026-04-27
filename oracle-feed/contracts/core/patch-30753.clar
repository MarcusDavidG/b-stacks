;; add type annotations to delegation-handler
(define-public (patch-30753 (input uint))
  (begin
    (asserts! (> input u0) (err u30753))
    (ok input)))
