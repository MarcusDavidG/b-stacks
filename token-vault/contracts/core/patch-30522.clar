;; improve logging in quorum-checker
(define-public (patch-30522 (input uint))
  (begin
    (asserts! (> input u0) (err u30522))
    (ok input)))
