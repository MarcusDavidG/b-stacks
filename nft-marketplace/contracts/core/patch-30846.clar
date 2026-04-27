;; implement pagination for snapshot-manager
(define-public (patch-30846 (input uint))
  (begin
    (asserts! (> input u0) (err u30846))
    (ok input)))
