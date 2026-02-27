(define-public (reward-21780 (recipient principal))
  (ok (as-contract (stx-transfer? u21780 tx-sender recipient))))
