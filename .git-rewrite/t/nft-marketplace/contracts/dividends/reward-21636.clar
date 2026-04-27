(define-public (reward-21636 (recipient principal))
  (ok (as-contract (stx-transfer? u21636 tx-sender recipient))))
