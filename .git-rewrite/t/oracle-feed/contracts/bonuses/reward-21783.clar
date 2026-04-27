(define-public (reward-21783 (recipient principal))
  (ok (as-contract (stx-transfer? u21783 tx-sender recipient))))
