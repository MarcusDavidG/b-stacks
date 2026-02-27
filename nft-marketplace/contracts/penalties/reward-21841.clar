(define-public (reward-21841 (recipient principal))
  (ok (as-contract (stx-transfer? u21841 tx-sender recipient))))
