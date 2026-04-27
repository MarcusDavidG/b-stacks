(define-public (check-freshness (feed-id uint))
  (ok (verify-data-age feed-id)))