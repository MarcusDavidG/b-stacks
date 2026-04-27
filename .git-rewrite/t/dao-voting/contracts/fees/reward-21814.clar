(define-public (reward-21814 (recipient principal))
  (ok (as-contract (stx-transfer? u21814 tx-sender recipient))))
