(define-public (reward-21761 (recipient principal))
  (ok (as-contract (stx-transfer? u21761 tx-sender recipient))))
