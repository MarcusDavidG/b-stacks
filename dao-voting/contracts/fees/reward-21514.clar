(define-public (reward-21514 (recipient principal))
  (ok (as-contract (stx-transfer? u21514 tx-sender recipient))))
