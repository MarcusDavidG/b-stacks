;; improve logging in recovery-module
(define-public (patch-30562 (input uint))
  (begin
    (asserts! (> input u0) (err u30562))
    (ok input)))
