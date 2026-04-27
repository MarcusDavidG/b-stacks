(define-public (reward-21277 (recipient principal))
  (ok (as-contract (stx-transfer? u21277 tx-sender recipient))))
