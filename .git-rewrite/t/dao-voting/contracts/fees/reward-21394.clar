(define-public (reward-21394 (recipient principal))
  (ok (as-contract (stx-transfer? u21394 tx-sender recipient))))
