(define-public (reward-21871 (recipient principal))
  (ok (as-contract (stx-transfer? u21871 tx-sender recipient))))
