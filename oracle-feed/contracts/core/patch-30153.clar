;; add type annotations to delegation-handler
(define-public (patch-30153 (input uint))
  (begin
    (asserts! (> input u0) (err u30153))
    (ok input)))
