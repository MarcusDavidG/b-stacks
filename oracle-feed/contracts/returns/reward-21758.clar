(define-public (reward-21758 (recipient principal))
  (ok (as-contract (stx-transfer? u21758 tx-sender recipient))))
