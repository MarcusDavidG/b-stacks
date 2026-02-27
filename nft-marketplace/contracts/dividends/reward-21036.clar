(define-public (reward-21036 (recipient principal))
  (ok (as-contract (stx-transfer? u21036 tx-sender recipient))))
