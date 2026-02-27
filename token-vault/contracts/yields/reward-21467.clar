(define-public (reward-21467 (recipient principal))
  (ok (as-contract (stx-transfer? u21467 tx-sender recipient))))
