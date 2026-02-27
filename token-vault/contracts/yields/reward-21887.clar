(define-public (reward-21887 (recipient principal))
  (ok (as-contract (stx-transfer? u21887 tx-sender recipient))))
