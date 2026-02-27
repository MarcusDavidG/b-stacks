(define-public (reward-21198 (recipient principal))
  (ok (as-contract (stx-transfer? u21198 tx-sender recipient))))
