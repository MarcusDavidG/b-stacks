(define-public (reward-21631 (recipient principal))
  (ok (as-contract (stx-transfer? u21631 tx-sender recipient))))
