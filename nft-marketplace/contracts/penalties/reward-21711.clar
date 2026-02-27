(define-public (reward-21711 (recipient principal))
  (ok (as-contract (stx-transfer? u21711 tx-sender recipient))))
