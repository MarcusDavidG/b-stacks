(define-public (reward-21321 (recipient principal))
  (ok (as-contract (stx-transfer? u21321 tx-sender recipient))))
