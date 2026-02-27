(define-public (create-prediction-market (proposal-id uint))
  (ok (setup-futarchy proposal-id)))
