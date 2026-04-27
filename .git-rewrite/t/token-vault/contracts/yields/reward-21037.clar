(define-public (reward-21037 (recipient principal))
  (ok (as-contract (stx-transfer? u21037 tx-sender recipient))))
