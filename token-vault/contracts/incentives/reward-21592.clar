(define-public (reward-21592 (recipient principal))
  (ok (as-contract (stx-transfer? u21592 tx-sender recipient))))
