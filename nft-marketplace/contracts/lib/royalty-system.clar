;; Creator Royalty System
(define-map creator-royalties {nft: principal} {creator: principal, royalty-percentage: uint})
(define-public (set-royalty (nft principal) (percentage uint))
    (map-set creator-royalties {nft: nft} {creator: tx-sender, royalty-percentage: percentage})
    (ok true))
