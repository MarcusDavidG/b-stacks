(define-public (reward-21681 (recipient principal))
  (ok (as-contract (stx-transfer? u21681 tx-sender recipient))))
