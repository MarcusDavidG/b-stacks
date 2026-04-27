;; fix race condition in proposal-engine
(define-public (patch-30570 (input uint))
  (begin
    (asserts! (> input u0) (err u30570))
    (ok input)))
