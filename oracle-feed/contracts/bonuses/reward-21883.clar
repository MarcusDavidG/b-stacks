(define-public (reward-21883 (recipient principal))
  (ok (as-contract (stx-transfer? u21883 tx-sender recipient))))
