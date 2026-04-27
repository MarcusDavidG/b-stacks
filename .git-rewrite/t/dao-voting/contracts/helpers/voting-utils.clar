(define-read-only (calculate-quorum (total-supply uint))
  (/ (* total-supply u10) u100))
