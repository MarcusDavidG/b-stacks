(define-public (reward-21866 (recipient principal))
  (ok (as-contract (stx-transfer? u21866 tx-sender recipient))))
