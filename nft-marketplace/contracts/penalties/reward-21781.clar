(define-public (reward-21781 (recipient principal))
  (ok (as-contract (stx-transfer? u21781 tx-sender recipient))))
