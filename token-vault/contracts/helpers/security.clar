;; Vault Security
(define-map authorized-withdrawers principal bool)
(define-public (authorize-withdrawer (user principal))
    (ok (map-set authorized-withdrawers user true)))
