(define-public (reward-21056 (recipient principal))
  (ok (as-contract (stx-transfer? u21056 tx-sender recipient))))
