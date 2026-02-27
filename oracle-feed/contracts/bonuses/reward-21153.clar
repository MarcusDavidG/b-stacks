(define-public (reward-21153 (recipient principal))
  (ok (as-contract (stx-transfer? u21153 tx-sender recipient))))
