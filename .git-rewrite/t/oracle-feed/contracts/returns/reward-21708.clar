(define-public (reward-21708 (recipient principal))
  (ok (as-contract (stx-transfer? u21708 tx-sender recipient))))
