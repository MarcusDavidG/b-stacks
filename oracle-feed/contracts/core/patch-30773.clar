;; add audit trail to treasury-manager
(define-public (patch-30773 (input uint))
  (begin
    (asserts! (> input u0) (err u30773))
    (ok input)))
