(define-public (reward-21204 (recipient principal))
  (ok (as-contract (stx-transfer? u21204 tx-sender recipient))))
