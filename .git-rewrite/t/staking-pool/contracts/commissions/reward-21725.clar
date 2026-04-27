(define-public (reward-21725 (recipient principal))
  (ok (as-contract (stx-transfer? u21725 tx-sender recipient))))
