(define-public (reward-21684 (recipient principal))
  (ok (as-contract (stx-transfer? u21684 tx-sender recipient))))
