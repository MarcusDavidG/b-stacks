(define-public (reward-21654 (recipient principal))
  (ok (as-contract (stx-transfer? u21654 tx-sender recipient))))
