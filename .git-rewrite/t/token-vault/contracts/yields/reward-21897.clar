(define-public (reward-21897 (recipient principal))
  (ok (as-contract (stx-transfer? u21897 tx-sender recipient))))
