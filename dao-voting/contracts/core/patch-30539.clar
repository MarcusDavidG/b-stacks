;; add snapshot support to key-manager
(define-public (patch-30539 (input uint))
  (begin
    (asserts! (> input u0) (err u30539))
    (ok input)))
