(define-public (sync-chainlink (feed-id uint))
  (ok (fetch-chainlink-data feed-id)))
