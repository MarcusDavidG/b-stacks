(define-public (reward-21540 (recipient principal))
  (ok (as-contract (stx-transfer? u21540 tx-sender recipient))))
