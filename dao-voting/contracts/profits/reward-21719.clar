(define-public (reward-21719 (recipient principal))
  (ok (as-contract (stx-transfer? u21719 tx-sender recipient))))
