(define-public (reward-21607 (recipient principal))
  (ok (as-contract (stx-transfer? u21607 tx-sender recipient))))
