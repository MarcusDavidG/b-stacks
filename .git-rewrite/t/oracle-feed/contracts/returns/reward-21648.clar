(define-public (reward-21648 (recipient principal))
  (ok (as-contract (stx-transfer? u21648 tx-sender recipient))))
