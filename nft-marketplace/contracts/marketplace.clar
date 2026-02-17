;; NFT Marketplace

(define-constant contract-owner tx-sender)
(define-constant err-not-found (err u404))

(define-map listings { nft: principal, id: uint } { seller: principal, price: uint })