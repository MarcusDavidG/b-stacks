(define-public (reward-21018 (recipient principal))
  (ok (as-contract (stx-transfer? u21018 tx-sender recipient))))
