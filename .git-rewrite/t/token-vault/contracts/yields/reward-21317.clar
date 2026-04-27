(define-public (reward-21317 (recipient principal))
  (ok (as-contract (stx-transfer? u21317 tx-sender recipient))))
