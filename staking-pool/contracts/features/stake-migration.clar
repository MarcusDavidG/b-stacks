(define-public (migrate-stake (from-pool uint) (to-pool uint))
  (ok (transfer-stake from-pool to-pool)))
