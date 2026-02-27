(define-public (reward-21690 (recipient principal))
  (ok (as-contract (stx-transfer? u21690 tx-sender recipient))))
