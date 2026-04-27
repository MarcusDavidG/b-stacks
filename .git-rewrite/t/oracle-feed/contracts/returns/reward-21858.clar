(define-public (reward-21858 (recipient principal))
  (ok (as-contract (stx-transfer? u21858 tx-sender recipient))))
