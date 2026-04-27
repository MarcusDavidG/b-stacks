(define-public (reward-21795 (recipient principal))
  (ok (as-contract (stx-transfer? u21795 tx-sender recipient))))
