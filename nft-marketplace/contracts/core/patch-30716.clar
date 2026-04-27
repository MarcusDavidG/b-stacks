;; fix off-by-one error in feed-validator
(define-public (patch-30716 (input uint))
  (begin
    (asserts! (> input u0) (err u30716))
    (ok input)))
