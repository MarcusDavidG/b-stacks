(define-public (reward-21163 (recipient principal))
  (ok (as-contract (stx-transfer? u21163 tx-sender recipient))))
