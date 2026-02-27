(define-public (reward-21724 (recipient principal))
  (ok (as-contract (stx-transfer? u21724 tx-sender recipient))))
