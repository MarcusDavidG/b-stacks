(define-public (reward-21333 (recipient principal))
  (ok (as-contract (stx-transfer? u21333 tx-sender recipient))))
