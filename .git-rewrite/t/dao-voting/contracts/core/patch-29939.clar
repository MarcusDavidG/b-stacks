;; add snapshot support to key-manager
(define-public (patch-29939 (input uint))
  (begin
    (asserts! (> input u0) (err u29939))
    (ok input)))
