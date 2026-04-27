(define-public (reward-21899 (recipient principal))
  (ok (as-contract (stx-transfer? u21899 tx-sender recipient))))
