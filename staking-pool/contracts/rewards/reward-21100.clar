(define-public (reward-21100 (recipient principal))
  (ok (as-contract (stx-transfer? u21100 tx-sender recipient))))
