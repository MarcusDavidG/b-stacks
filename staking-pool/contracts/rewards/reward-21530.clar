(define-public (reward-21530 (recipient principal))
  (ok (as-contract (stx-transfer? u21530 tx-sender recipient))))
