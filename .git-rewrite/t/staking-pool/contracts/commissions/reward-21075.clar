(define-public (reward-21075 (recipient principal))
  (ok (as-contract (stx-transfer? u21075 tx-sender recipient))))
