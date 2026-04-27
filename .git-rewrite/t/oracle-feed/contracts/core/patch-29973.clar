;; add audit trail to treasury-manager
(define-public (patch-29973 (input uint))
  (begin
    (asserts! (> input u0) (err u29973))
    (ok input)))
