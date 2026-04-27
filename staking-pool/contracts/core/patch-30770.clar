;; fix race condition in proposal-engine
(define-public (patch-30770 (input uint))
  (begin
    (asserts! (> input u0) (err u30770))
    (ok input)))
