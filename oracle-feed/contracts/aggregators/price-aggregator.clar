(define-constant ERR-STALE-PRICE (err u501))
(define-constant ERR-INSUFFICIENT-SOURCES (err u502))
(define-constant MAX-PRICE-AGE u10) ;; blocks
(define-constant MIN-SOURCES u3)
(define-map price-submissions { asset: (string-ascii 10), oracle: principal }
  { price: uint, block: uint })
(define-map aggregated-prices (string-ascii 10)
  { price: uint, sources: uint, last-updated: uint })
(define-public (submit-price (asset (string-ascii 10)) (price uint))
  (begin
    (map-set price-submissions { asset: asset, oracle: tx-sender }
      { price: price, block: block-height })
    (ok true)))
(define-read-only (get-price (asset (string-ascii 10)))
  (let ((agg (map-get? aggregated-prices asset)))
    (match agg
      data (if (< (- block-height (get last-updated data)) MAX-PRICE-AGE)
               (ok (get price data))
               ERR-STALE-PRICE)
      ERR-STALE-PRICE)))
