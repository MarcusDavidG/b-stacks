(define-public (verify-vote-integrity (voter principal) (proposal uint))
  (ok (check-vote-integrity voter proposal)))