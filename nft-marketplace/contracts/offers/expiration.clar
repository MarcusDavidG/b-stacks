;; Offer expiration
(define-read-only (is-expired (timestamp uint))
  (> block-height timestamp))
