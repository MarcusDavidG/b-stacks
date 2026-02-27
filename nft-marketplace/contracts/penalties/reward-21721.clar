(define-public (reward-21721 (recipient principal))
  (ok (as-contract (stx-transfer? u21721 tx-sender recipient))))
