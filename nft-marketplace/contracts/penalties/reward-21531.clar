(define-public (reward-21531 (recipient principal))
  (ok (as-contract (stx-transfer? u21531 tx-sender recipient))))
