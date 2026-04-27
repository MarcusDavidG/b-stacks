(define-public (reward-21634 (recipient principal))
  (ok (as-contract (stx-transfer? u21634 tx-sender recipient))))
