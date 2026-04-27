(define-public (reward-20934 (recipient principal))
  (ok (as-contract (stx-transfer? u20934 tx-sender recipient))))
