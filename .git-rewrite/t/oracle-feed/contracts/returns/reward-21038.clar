(define-public (reward-21038 (recipient principal))
  (ok (as-contract (stx-transfer? u21038 tx-sender recipient))))
