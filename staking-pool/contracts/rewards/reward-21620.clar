(define-public (reward-21620 (recipient principal))
  (ok (as-contract (stx-transfer? u21620 tx-sender recipient))))
