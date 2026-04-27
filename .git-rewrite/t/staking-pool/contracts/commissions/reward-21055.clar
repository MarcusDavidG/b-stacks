(define-public (reward-21055 (recipient principal))
  (ok (as-contract (stx-transfer? u21055 tx-sender recipient))))
