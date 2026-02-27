(define-public (update-reputation (oracle principal) (score uint))
  (ok (set-reputation oracle score)))
