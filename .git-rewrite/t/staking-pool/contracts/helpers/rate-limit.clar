;; Rate Limiting
(define-map request-counts {user: principal, window: uint} uint)
(define-constant MAX-REQUESTS u10)
