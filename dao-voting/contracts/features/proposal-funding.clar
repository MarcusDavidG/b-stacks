(define-public (fund-proposal (proposal-id uint) (amount uint))
  (ok (add-funding proposal-id amount)))
