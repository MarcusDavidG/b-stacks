(define-public (reward-21417 (recipient principal))
  (ok (as-contract (stx-transfer? u21417 tx-sender recipient))))
