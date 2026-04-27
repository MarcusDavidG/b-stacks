(define-public (emergency-vote (proposal-id uint))
  (ok (fast-track-vote proposal-id)))