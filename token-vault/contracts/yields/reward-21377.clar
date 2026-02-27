(define-public (reward-21377 (recipient principal))
  (ok (as-contract (stx-transfer? u21377 tx-sender recipient))))
