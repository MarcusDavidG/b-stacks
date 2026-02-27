(define-public (reward-21722 (recipient principal))
  (ok (as-contract (stx-transfer? u21722 tx-sender recipient))))
