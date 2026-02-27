(define-public (reward-21020 (recipient principal))
  (ok (as-contract (stx-transfer? u21020 tx-sender recipient))))
