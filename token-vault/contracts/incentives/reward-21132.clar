(define-public (reward-21132 (recipient principal))
  (ok (as-contract (stx-transfer? u21132 tx-sender recipient))))
