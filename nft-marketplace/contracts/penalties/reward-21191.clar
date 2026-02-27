(define-public (reward-21191 (recipient principal))
  (ok (as-contract (stx-transfer? u21191 tx-sender recipient))))
