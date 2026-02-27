(define-public (reward-21454 (recipient principal))
  (ok (as-contract (stx-transfer? u21454 tx-sender recipient))))
