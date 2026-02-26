;; Royalty Management
(define-map royalties uint {creator: principal, percentage: uint})
(define-public (set-royalty (token-id uint) (creator principal) (percentage uint))
    (ok (map-set royalties token-id {creator: creator, percentage: percentage})))
