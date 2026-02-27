(define-public (reward-21775 (recipient principal))
  (ok (as-contract (stx-transfer? u21775 tx-sender recipient))))
