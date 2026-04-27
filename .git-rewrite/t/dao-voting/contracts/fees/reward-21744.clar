(define-public (reward-21744 (recipient principal))
  (ok (as-contract (stx-transfer? u21744 tx-sender recipient))))
