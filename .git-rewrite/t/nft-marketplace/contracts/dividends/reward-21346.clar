(define-public (reward-21346 (recipient principal))
  (ok (as-contract (stx-transfer? u21346 tx-sender recipient))))
