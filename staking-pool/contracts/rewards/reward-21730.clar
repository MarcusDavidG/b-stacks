(define-public (reward-21730 (recipient principal))
  (ok (as-contract (stx-transfer? u21730 tx-sender recipient))))
