(define-public (reward-20943 (recipient principal))
  (ok (as-contract (stx-transfer? u20943 tx-sender recipient))))
