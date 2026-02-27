(define-public (reward-21639 (recipient principal))
  (ok (as-contract (stx-transfer? u21639 tx-sender recipient))))
