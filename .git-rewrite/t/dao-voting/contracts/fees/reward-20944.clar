(define-public (reward-20944 (recipient principal))
  (ok (as-contract (stx-transfer? u20944 tx-sender recipient))))
