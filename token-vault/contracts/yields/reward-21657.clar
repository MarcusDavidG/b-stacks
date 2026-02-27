(define-public (reward-21657 (recipient principal))
  (ok (as-contract (stx-transfer? u21657 tx-sender recipient))))
