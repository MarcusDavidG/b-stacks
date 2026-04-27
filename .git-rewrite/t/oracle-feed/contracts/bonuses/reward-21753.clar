(define-public (reward-21753 (recipient principal))
  (ok (as-contract (stx-transfer? u21753 tx-sender recipient))))
