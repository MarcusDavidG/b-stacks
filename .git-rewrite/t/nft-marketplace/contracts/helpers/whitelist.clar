;; Whitelist Management
(define-map whitelist principal bool)
(define-public (add-to-whitelist (user principal))
    (ok (map-set whitelist user true)))
(define-read-only (is-whitelisted (user principal))
    (default-to false (map-get? whitelist user)))
