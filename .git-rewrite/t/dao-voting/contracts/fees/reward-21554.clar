(define-public (reward-21554 (recipient principal))
  (ok (as-contract (stx-transfer? u21554 tx-sender recipient))))
