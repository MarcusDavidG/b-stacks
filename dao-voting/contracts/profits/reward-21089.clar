(define-public (reward-21089 (recipient principal))
  (ok (as-contract (stx-transfer? u21089 tx-sender recipient))))
