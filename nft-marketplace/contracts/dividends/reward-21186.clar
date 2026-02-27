(define-public (reward-21186 (recipient principal))
  (ok (as-contract (stx-transfer? u21186 tx-sender recipient))))
