;; add unit tests for treasury-manager
(define-public (patch-30223 (input uint))
  (begin
    (asserts! (> input u0) (err u30223))
    (ok input)))
