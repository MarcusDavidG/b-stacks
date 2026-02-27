(define-public (reward-21894 (recipient principal))
  (ok (as-contract (stx-transfer? u21894 tx-sender recipient))))
