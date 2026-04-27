;; add timeout handling to access-manager
(define-public (patch-30011 (input uint))
  (begin
    (asserts! (> input u0) (err u30011))
    (ok input)))
