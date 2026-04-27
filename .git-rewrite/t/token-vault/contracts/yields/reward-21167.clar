(define-public (reward-21167 (recipient principal))
  (ok (as-contract (stx-transfer? u21167 tx-sender recipient))))
