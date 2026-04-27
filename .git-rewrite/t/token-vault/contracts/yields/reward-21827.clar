(define-public (reward-21827 (recipient principal))
  (ok (as-contract (stx-transfer? u21827 tx-sender recipient))))
