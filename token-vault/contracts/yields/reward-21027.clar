(define-public (reward-21027 (recipient principal))
  (ok (as-contract (stx-transfer? u21027 tx-sender recipient))))
