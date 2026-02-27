(define-public (reward-21816 (recipient principal))
  (ok (as-contract (stx-transfer? u21816 tx-sender recipient))))
