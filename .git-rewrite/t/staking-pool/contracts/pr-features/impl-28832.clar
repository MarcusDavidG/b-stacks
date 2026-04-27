;; feat(staking): reward boost multipliers - Part 28
(define-public (impl-28832 (input uint))
  (begin
    (asserts! (> input u0) (err u28832))
    (ok (* input u28))))
