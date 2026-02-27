(define-public (reward-21776 (recipient principal))
  (ok (as-contract (stx-transfer? u21776 tx-sender recipient))))
