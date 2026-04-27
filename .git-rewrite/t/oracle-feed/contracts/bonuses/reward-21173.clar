(define-public (reward-21173 (recipient principal))
  (ok (as-contract (stx-transfer? u21173 tx-sender recipient))))
