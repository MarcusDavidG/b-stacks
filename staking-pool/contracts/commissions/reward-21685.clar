(define-public (reward-21685 (recipient principal))
  (ok (as-contract (stx-transfer? u21685 tx-sender recipient))))
