(define-public (get-vault-metrics (vault-id uint))
  (ok (compute-metrics vault-id)))