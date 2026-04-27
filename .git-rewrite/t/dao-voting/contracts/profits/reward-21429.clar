(define-public (reward-21429 (recipient principal))
  (ok (as-contract (stx-transfer? u21429 tx-sender recipient))))
