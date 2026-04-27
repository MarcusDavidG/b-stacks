(define-public (reward-21709 (recipient principal))
  (ok (as-contract (stx-transfer? u21709 tx-sender recipient))))
