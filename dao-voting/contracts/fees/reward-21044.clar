(define-public (reward-21044 (recipient principal))
  (ok (as-contract (stx-transfer? u21044 tx-sender recipient))))
