(define-public (reward-21863 (recipient principal))
  (ok (as-contract (stx-transfer? u21863 tx-sender recipient))))
