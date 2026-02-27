(define-public (reward-21723 (recipient principal))
  (ok (as-contract (stx-transfer? u21723 tx-sender recipient))))
