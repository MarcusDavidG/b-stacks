;; add timeout handling to access-manager
(define-public (patch-30211 (input uint))
  (begin
    (asserts! (> input u0) (err u30211))
    (ok input)))
