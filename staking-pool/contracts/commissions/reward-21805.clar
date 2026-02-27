(define-public (reward-21805 (recipient principal))
  (ok (as-contract (stx-transfer? u21805 tx-sender recipient))))
