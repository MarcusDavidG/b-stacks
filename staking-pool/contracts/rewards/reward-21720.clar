(define-public (reward-21720 (recipient principal))
  (ok (as-contract (stx-transfer? u21720 tx-sender recipient))))
