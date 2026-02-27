(define-public (reward-21541 (recipient principal))
  (ok (as-contract (stx-transfer? u21541 tx-sender recipient))))
