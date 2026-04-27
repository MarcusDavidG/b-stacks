(define-public (reward-21786 (recipient principal))
  (ok (as-contract (stx-transfer? u21786 tx-sender recipient))))
