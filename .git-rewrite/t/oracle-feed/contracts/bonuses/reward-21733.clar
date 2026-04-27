(define-public (reward-21733 (recipient principal))
  (ok (as-contract (stx-transfer? u21733 tx-sender recipient))))
