(define-public (reward-21892 (recipient principal))
  (ok (as-contract (stx-transfer? u21892 tx-sender recipient))))
