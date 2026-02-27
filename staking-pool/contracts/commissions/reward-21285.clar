(define-public (reward-21285 (recipient principal))
  (ok (as-contract (stx-transfer? u21285 tx-sender recipient))))
