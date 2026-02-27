(define-public (reward-21660 (recipient principal))
  (ok (as-contract (stx-transfer? u21660 tx-sender recipient))))
