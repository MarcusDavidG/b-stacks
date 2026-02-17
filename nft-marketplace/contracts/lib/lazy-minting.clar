;; Lazy Minting System
;; Mint NFTs only when purchased to save gas

(define-constant ERR-INVALID-SIGNATURE (err u1500))
(define-map lazy-nfts {creator: principal, token-id: uint} {metadata-uri: (string-ascii 200), price: uint, signature: (buff 65), minted: bool})
(define-map mint-vouchers (buff 32) {creator: principal, token-id: uint, buyer: (optional principal), expires-at: uint})

(define-public (create-lazy-nft (token-id uint) (metadata-uri (string-ascii 200)) (price uint) (signature (buff 65)))
    (map-set lazy-nfts {creator: tx-sender, token-id: token-id} {
        metadata-uri: metadata-uri, price: price, signature: signature, minted: false
    })
    (ok true))

(define-public (purchase-lazy-nft (creator principal) (token-id uint))
    (let ((nft-data (unwrap! (map-get? lazy-nfts {creator: creator, token-id: token-id}) (err ERR-NOT-FOUND))))
        (asserts! (not (get minted nft-data)) (err ERR-NOT-AUTHORIZED))
        (map-set lazy-nfts {creator: creator, token-id: token-id} (merge nft-data {minted: true}))
        (ok (get price nft-data))))

(define-read-only (verify-lazy-signature (creator principal) (token-id uint) (signature (buff 65))) true)
