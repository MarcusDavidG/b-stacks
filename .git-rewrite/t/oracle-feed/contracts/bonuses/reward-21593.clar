(define-public (reward-21593 (recipient principal))
  (ok (as-contract (stx-transfer? u21593 tx-sender recipient))))
