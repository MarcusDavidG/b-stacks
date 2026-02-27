(define-public (reward-21035 (recipient principal))
  (ok (as-contract (stx-transfer? u21035 tx-sender recipient))))
