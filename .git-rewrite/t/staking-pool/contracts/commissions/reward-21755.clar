(define-public (reward-21755 (recipient principal))
  (ok (as-contract (stx-transfer? u21755 tx-sender recipient))))
