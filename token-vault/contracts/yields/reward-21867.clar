(define-public (reward-21867 (recipient principal))
  (ok (as-contract (stx-transfer? u21867 tx-sender recipient))))
