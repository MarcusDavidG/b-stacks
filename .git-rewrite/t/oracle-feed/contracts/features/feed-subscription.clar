(define-public (subscribe-feed (feed-id uint))
  (ok (add-subscriber tx-sender feed-id)))
