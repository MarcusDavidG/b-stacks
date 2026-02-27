(define-public (reward-21182 (recipient principal))
  (ok (as-contract (stx-transfer? u21182 tx-sender recipient))))
