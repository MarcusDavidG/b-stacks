;; NFT Marketplace V2 - Fixed price + auction listings
(define-constant CONTRACT-OWNER tx-sender)
(define-constant ERR-NOT-OWNER (err u101))
(define-constant ERR-NOT-LISTED (err u102))
(define-constant ERR-WRONG-PRICE (err u103))
(define-constant ERR-AUCTION-ACTIVE (err u104))
(define-constant ERR-BID-TOO-LOW (err u105))

(define-map listings uint
  { seller: principal, price: uint, is-auction: bool,
    end-block: uint, highest-bidder: (optional principal), highest-bid: uint })

(define-data-var listing-nonce uint u0)
(define-data-var platform-fee uint u250) ;; 2.5%

(define-public (list-fixed-price (nft-contract principal) (token-id uint) (price uint))
  (let ((listing-id (var-get listing-nonce)))
    (try! (contract-call? nft-contract transfer token-id tx-sender (as-contract tx-sender)))
    (map-set listings listing-id
      { seller: tx-sender, price: price, is-auction: false,
        end-block: u0, highest-bidder: none, highest-bid: u0 })
    (var-set listing-nonce (+ listing-id u1))
    (ok listing-id)))

(define-public (buy (listing-id uint))
  (let* ((listing (unwrap! (map-get? listings listing-id) ERR-NOT-LISTED))
         (price (get price listing))
         (fee (/ (* price (var-get platform-fee)) u10000))
         (seller-amount (- price fee)))
    (asserts! (not (get is-auction listing)) ERR-AUCTION-ACTIVE)
    (try! (stx-transfer? price tx-sender (get seller listing)))
    (map-delete listings listing-id)
    (ok true)))

(define-public (place-bid (listing-id uint) (bid uint))
  (let* ((listing (unwrap! (map-get? listings listing-id) ERR-NOT-LISTED)))
    (asserts! (get is-auction listing) ERR-NOT-LISTED)
    (asserts! (> bid (get highest-bid listing)) ERR-BID-TOO-LOW)
    (asserts! (< block-height (get end-block listing)) ERR-AUCTION-ACTIVE)
    (try! (stx-transfer? bid tx-sender (as-contract tx-sender)))
    (map-set listings listing-id
      (merge listing { highest-bidder: (some tx-sender), highest-bid: bid }))
    (ok true)))

(define-read-only (get-listing (listing-id uint))
  (map-get? listings listing-id))
