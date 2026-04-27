;; NFT Rental System
;; Allows NFT owners to rent out their assets for passive income

(define-constant ERR-NOT-OWNER (err u3000))
(define-constant ERR-ALREADY-RENTED (err u3001))
(define-constant ERR-RENTAL-EXPIRED (err u3002))

(define-map rental-listings {nft: principal, token-id: uint} {
    owner: principal,
    rental-price: uint,
    max-duration: uint,
    available: bool
})

(define-map active-rentals {nft: principal, token-id: uint} {
    renter: principal,
    rental-start: uint,
    rental-end: uint,
    total-paid: uint
})

(define-public (list-for-rent (nft principal) (token-id uint) (price uint) (max-duration uint))
    (map-set rental-listings {nft: nft, token-id: token-id} {
        owner: tx-sender,
        rental-price: price,
        max-duration: max-duration,
        available: true
    })
    (ok true))

(define-public (rent-nft (nft principal) (token-id uint) (duration uint))
    (let ((listing (unwrap! (map-get? rental-listings {nft: nft, token-id: token-id}) (err ERR-NOT-FOUND))))
        (asserts! (get available listing) (err ERR-ALREADY-RENTED))
        (asserts! (<= duration (get max-duration listing)) (err ERR-INVALID-AMOUNT))
        (map-set active-rentals {nft: nft, token-id: token-id} {
            renter: tx-sender,
            rental-start: block-height,
            rental-end: (+ block-height duration),
            total-paid: (* (get rental-price listing) duration)
        })
        (ok true)))
