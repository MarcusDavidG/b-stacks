(define-public (reward-21718 (recipient principal))
  (ok (as-contract (stx-transfer? u21718 tx-sender recipient))))
