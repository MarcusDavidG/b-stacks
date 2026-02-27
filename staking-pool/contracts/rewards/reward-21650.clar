(define-public (reward-21650 (recipient principal))
  (ok (as-contract (stx-transfer? u21650 tx-sender recipient))))
