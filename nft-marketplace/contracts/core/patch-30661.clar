;; improve error handling in access-manager
(define-public (patch-30661 (input uint))
  (begin
    (asserts! (> input u0) (err u30661))
    (ok input)))
