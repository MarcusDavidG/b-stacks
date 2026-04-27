(define-public (reward-21646 (recipient principal))
  (ok (as-contract (stx-transfer? u21646 tx-sender recipient))))
