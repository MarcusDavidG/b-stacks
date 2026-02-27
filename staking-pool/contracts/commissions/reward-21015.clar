(define-public (reward-21015 (recipient principal))
  (ok (as-contract (stx-transfer? u21015 tx-sender recipient))))
