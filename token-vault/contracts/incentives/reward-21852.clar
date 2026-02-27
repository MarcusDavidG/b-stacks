(define-public (reward-21852 (recipient principal))
  (ok (as-contract (stx-transfer? u21852 tx-sender recipient))))
