(define-public (boost-proposal (proposal-id uint))
  (ok (apply-holographic-consensus proposal-id)))
