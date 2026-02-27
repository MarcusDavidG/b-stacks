(define-public (reward-21590 (recipient principal))
  (ok (as-contract (stx-transfer? u21590 tx-sender recipient))))
