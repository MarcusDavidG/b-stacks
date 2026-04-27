(define-public (reward-21553 (recipient principal))
  (ok (as-contract (stx-transfer? u21553 tx-sender recipient))))
