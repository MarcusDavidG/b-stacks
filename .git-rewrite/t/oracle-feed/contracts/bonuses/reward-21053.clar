(define-public (reward-21053 (recipient principal))
  (ok (as-contract (stx-transfer? u21053 tx-sender recipient))))
