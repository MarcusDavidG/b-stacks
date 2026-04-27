(define-public (reward-21829 (recipient principal))
  (ok (as-contract (stx-transfer? u21829 tx-sender recipient))))
