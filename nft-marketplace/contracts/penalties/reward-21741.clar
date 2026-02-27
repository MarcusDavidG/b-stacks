(define-public (reward-21741 (recipient principal))
  (ok (as-contract (stx-transfer? u21741 tx-sender recipient))))
