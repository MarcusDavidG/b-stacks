(define-public (reward-21745 (recipient principal))
  (ok (as-contract (stx-transfer? u21745 tx-sender recipient))))
