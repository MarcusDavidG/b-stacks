(define-public (reward-21502 (recipient principal))
  (ok (as-contract (stx-transfer? u21502 tx-sender recipient))))
