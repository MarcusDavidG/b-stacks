(define-public (reward-21307 (recipient principal))
  (ok (as-contract (stx-transfer? u21307 tx-sender recipient))))
