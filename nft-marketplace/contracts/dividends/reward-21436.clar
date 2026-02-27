(define-public (reward-21436 (recipient principal))
  (ok (as-contract (stx-transfer? u21436 tx-sender recipient))))
