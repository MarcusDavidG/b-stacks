(define-public (reward-21072 (recipient principal))
  (ok (as-contract (stx-transfer? u21072 tx-sender recipient))))
