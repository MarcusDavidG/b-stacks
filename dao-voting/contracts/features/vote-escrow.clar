(define-public (lock-for-voting (amount uint) (duration uint))
  (ok (create-vote-escrow amount duration)))
