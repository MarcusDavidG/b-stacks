(define-constant MAX-DEVIATION u1000) ;; 10% in basis points
(define-constant ERR-CIRCUIT-OPEN (err u503))
(define-map circuit-state (string-ascii 10) { open: bool, last-price: uint })
(define-public (check-and-update (asset (string-ascii 10)) (new-price uint))
  (let ((state (default-to { open: false, last-price: new-price }
                  (map-get? circuit-state asset)))
        (last (get last-price state))
        (deviation (if (> new-price last)
                     (/ (* (- new-price last) u10000) last)
                     (/ (* (- last new-price) u10000) last))))
    (if (> deviation MAX-DEVIATION)
      (begin
        (map-set circuit-state asset (merge state { open: true }))
        ERR-CIRCUIT-OPEN)
      (begin
        (map-set circuit-state asset { open: false, last-price: new-price })
        (ok new-price)))))
(define-read-only (is-open (asset (string-ascii 10)))
  (get open (default-to { open: false, last-price: u0 } (map-get? circuit-state asset))))
