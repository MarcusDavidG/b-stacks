(define-public (reward-21532 (recipient principal))
  (ok (as-contract (stx-transfer? u21532 tx-sender recipient))))
