(define-public (reward-21361 (recipient principal))
  (ok (as-contract (stx-transfer? u21361 tx-sender recipient))))
