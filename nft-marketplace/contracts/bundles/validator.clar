;; Bundle validator
(define-read-only (is-valid-bundle (size uint))
  (and (>= size u2) (<= size u50)))
