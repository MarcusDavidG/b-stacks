(define-public (reward-21735 (recipient principal))
  (ok (as-contract (stx-transfer? u21735 tx-sender recipient))))
