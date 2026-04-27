(define-public (reward-21803 (recipient principal))
  (ok (as-contract (stx-transfer? u21803 tx-sender recipient))))
