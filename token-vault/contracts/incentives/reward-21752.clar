(define-public (reward-21752 (recipient principal))
  (ok (as-contract (stx-transfer? u21752 tx-sender recipient))))
