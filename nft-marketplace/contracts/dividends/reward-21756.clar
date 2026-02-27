(define-public (reward-21756 (recipient principal))
  (ok (as-contract (stx-transfer? u21756 tx-sender recipient))))
