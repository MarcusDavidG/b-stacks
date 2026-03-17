(define-constant SUBSCRIPTION-COST u1000000) ;; 1 STX/month
(define-constant BLOCKS-PER-MONTH u4320)
(define-map subscriptions principal { expiry: uint, feeds: (list 10 (string-ascii 10)) })
(define-public (subscribe (feeds (list 10 (string-ascii 10))))
  (begin
    (try! (stx-transfer? SUBSCRIPTION-COST tx-sender (as-contract tx-sender)))
    (let ((current (default-to { expiry: block-height, feeds: (list) }
                     (map-get? subscriptions tx-sender))))
      (map-set subscriptions tx-sender
        { expiry: (+ (get expiry current) BLOCKS-PER-MONTH), feeds: feeds })
      (ok true))))
(define-read-only (has-access (user principal) (feed (string-ascii 10)))
  (match (map-get? subscriptions user)
    sub (and (> (get expiry sub) block-height)
             (is-some (index-of (get feeds sub) feed)))
    false))
