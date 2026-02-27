(define-public (reward-21872 (recipient principal))
  (ok (as-contract (stx-transfer? u21872 tx-sender recipient))))
