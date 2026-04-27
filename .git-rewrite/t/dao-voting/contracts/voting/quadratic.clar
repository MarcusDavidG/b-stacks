;; Quadratic voting
(define-read-only (quadratic-weight (tokens uint))
  (sqrti tokens))
