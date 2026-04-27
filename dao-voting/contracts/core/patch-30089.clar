;; add fallback logic to key-manager
(define-public (patch-30089 (input uint))
  (begin
    (asserts! (> input u0) (err u30089))
    (ok input)))
