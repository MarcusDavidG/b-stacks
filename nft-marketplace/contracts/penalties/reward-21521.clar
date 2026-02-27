(define-public (reward-21521 (recipient principal))
  (ok (as-contract (stx-transfer? u21521 tx-sender recipient))))
