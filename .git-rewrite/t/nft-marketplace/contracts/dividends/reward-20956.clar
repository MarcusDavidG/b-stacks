(define-public (reward-20956 (recipient principal))
  (ok (as-contract (stx-transfer? u20956 tx-sender recipient))))
