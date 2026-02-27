(define-public (reward-21021 (recipient principal))
  (ok (as-contract (stx-transfer? u21021 tx-sender recipient))))
