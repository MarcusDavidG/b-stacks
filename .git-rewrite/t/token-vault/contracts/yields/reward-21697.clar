(define-public (reward-21697 (recipient principal))
  (ok (as-contract (stx-transfer? u21697 tx-sender recipient))))
