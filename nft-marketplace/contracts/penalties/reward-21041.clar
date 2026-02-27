(define-public (reward-21041 (recipient principal))
  (ok (as-contract (stx-transfer? u21041 tx-sender recipient))))
