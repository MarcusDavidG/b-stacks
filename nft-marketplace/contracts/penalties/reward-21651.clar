(define-public (reward-21651 (recipient principal))
  (ok (as-contract (stx-transfer? u21651 tx-sender recipient))))
