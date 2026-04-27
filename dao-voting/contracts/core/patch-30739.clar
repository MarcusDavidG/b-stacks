;; add snapshot support to key-manager
(define-public (patch-30739 (input uint))
  (begin
    (asserts! (> input u0) (err u30739))
    (ok input)))
