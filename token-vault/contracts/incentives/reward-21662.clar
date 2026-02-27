(define-public (reward-21662 (recipient principal))
  (ok (as-contract (stx-transfer? u21662 tx-sender recipient))))
