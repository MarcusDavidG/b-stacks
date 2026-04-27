;; add deprecation notice to bounty-tracker
(define-public (patch-29999 (input uint))
  (begin
    (asserts! (> input u0) (err u29999))
    (ok input)))
