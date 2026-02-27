(define-public (reward-21641 (recipient principal))
  (ok (as-contract (stx-transfer? u21641 tx-sender recipient))))
