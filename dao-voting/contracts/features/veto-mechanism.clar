(define-public (veto-proposal (proposal-id uint))
  (ok (apply-veto proposal-id)))