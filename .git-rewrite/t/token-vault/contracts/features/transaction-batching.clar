(define-public (batch-execute (txs (list 20 {recipient: principal, amount: uint})))
  (ok (fold execute-tx txs true)))
