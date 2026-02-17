;; NFT Royalty System

(define-constant DEFAULT-ROYALTY u250) ;; 2.5%

(define-map royalties uint {
  creator: principal,
  percentage: uint
})

(define-public (set-royalty (token-id uint) (creator principal) (percentage uint))
  (begin
    (asserts! (<= percentage u1000) (err u501)) ;; Max 10%
    (map-set royalties token-id {
      creator: creator,
      percentage: percentage
    })
    (ok true)))

(define-public (calculate-royalty (token-id uint) (sale-price uint))
  (match (map-get? royalties token-id)
    royalty-info (ok (* sale-price (get percentage royalty-info) / u10000))
    (ok (* sale-price DEFAULT-ROYALTY / u10000))))

(define-read-only (get-royalty-info (token-id uint))
  (map-get? royalties token-id))