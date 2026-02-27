(define-public (reward-21567 (recipient principal))
  (ok (as-contract (stx-transfer? u21567 tx-sender recipient))))
