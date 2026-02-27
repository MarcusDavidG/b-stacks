(define-public (reward-21849 (recipient principal))
  (ok (as-contract (stx-transfer? u21849 tx-sender recipient))))
