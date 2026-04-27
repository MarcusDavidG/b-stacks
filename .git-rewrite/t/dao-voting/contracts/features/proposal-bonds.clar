(define-public (post-proposal-bond (proposal-id uint) (amount uint))
  (ok (lock-bond proposal-id amount)))