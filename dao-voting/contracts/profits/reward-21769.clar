(define-public (reward-21769 (recipient principal))
  (ok (as-contract (stx-transfer? u21769 tx-sender recipient))))
