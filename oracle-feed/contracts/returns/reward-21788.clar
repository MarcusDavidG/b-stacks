(define-public (reward-21788 (recipient principal))
  (ok (as-contract (stx-transfer? u21788 tx-sender recipient))))
