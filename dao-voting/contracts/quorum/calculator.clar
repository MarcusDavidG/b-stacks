;; Quorum calculation
(define-read-only (calc-quorum (supply uint))
  (/ (* supply u20) u100))
