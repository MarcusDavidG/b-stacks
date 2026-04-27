(define-public (reward-21638 (recipient principal))
  (ok (as-contract (stx-transfer? u21638 tx-sender recipient))))
