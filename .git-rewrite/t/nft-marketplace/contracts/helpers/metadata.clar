;; NFT Metadata Storage
(define-map token-metadata uint {uri: (string-ascii 256), name: (string-ascii 50)})
(define-public (set-metadata (token-id uint) (uri (string-ascii 256)) (name (string-ascii 50)))
    (ok (map-set token-metadata token-id {uri: uri, name: name})))
