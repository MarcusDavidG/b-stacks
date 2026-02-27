(define-public (reward-21832 (recipient principal))
  (ok (as-contract (stx-transfer? u21832 tx-sender recipient))))
