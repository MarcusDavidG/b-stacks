(define-public (reward-21463 (recipient principal))
  (ok (as-contract (stx-transfer? u21463 tx-sender recipient))))
