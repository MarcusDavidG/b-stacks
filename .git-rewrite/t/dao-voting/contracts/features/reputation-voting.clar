(define-public (vote-with-reputation (proposal-id uint))
  (ok (cast-reputation-vote proposal-id)))
