(define-public (reward-21157 (recipient principal))
  (ok (as-contract (stx-transfer? u21157 tx-sender recipient))))
