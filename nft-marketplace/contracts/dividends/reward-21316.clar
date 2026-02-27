(define-public (reward-21316 (recipient principal))
  (ok (as-contract (stx-transfer? u21316 tx-sender recipient))))
