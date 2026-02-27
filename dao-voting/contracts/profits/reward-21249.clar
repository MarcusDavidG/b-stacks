(define-public (reward-21249 (recipient principal))
  (ok (as-contract (stx-transfer? u21249 tx-sender recipient))))
