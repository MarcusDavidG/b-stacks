;; Oracle Integration for Staking Pool
;; Fetches real-time price data for reward calculations

(define-map oracle-feeds {asset: (string-ascii 10)} {oracle-contract: principal, last-price: uint, last-update: uint})
(define-constant PRICE-STALENESS-THRESHOLD u144)

(define-public (register-oracle (asset (string-ascii 10)) (oracle-contract principal))
    (map-set oracle-feeds {asset: asset} {oracle-contract: oracle-contract, last-price: u0, last-update: u0})
    (ok true))

(define-read-only (get-asset-price (asset (string-ascii 10)))
    (match (map-get? oracle-feeds {asset: asset})
        feed-data 
        (if (< (- block-height (get last-update feed-data)) PRICE-STALENESS-THRESHOLD)
            (some (get last-price feed-data))
            none)
        none))

(define-public (update-price-from-oracle (asset (string-ascii 10)))
    (let ((feed-data (unwrap! (map-get? oracle-feeds {asset: asset}) (err ERR-NOT-FOUND))))
        (map-set oracle-feeds {asset: asset} (merge feed-data {last-update: block-height}))
        (ok true)))
