;; Storage Optimization
(define-map compact-data uint uint)
(define-public (store-compact (id uint) (value uint))
    (ok (map-set compact-data id value)))
