(define-read-only (get-days-elapsed (start-block uint))
  (/ (- block-height start-block) u144))
