;; Advanced NFT Marketplace v2.0
;; Supports auctions, offers, royalties, and fractional ownership

;; Constants
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-FOUND (err u404))
(define-constant ERR-NOT-AUTHORIZED (err u401))
(define-constant ERR-INVALID-PRICE (err u400))
(define-constant ERR-AUCTION-ENDED (err u410))
(define-constant ERR-BID-TOO-LOW (err u411))

;; Marketplace fee (2.5%)
(define-constant MARKETPLACE-FEE u250)

;; Data Maps
(define-map listings {nft: principal, id: uint} {seller: principal, price: uint, listing-type: (string-ascii 20), expires-at: uint})
(define-map auctions {nft: principal, id: uint} {seller: principal, min-bid: uint, highest-bid: uint, highest-bidder: (optional principal), ends-at: uint})
(define-map offers {nft: principal, id: uint, buyer: principal} {amount: uint, expires-at: uint})
(define-map royalties {nft: principal} {creator: principal, percentage: uint})
(define-map collection-stats {collection: principal} {total-volume: uint, floor-price: uint, total-sales: uint})