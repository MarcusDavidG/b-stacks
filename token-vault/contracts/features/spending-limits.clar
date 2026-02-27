(define-public (set-daily-limit (limit uint))
  (ok (var-set daily-spending-limit limit)))
