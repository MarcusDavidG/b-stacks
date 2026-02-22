;; Multi-source consensus
(define-read-only (consensus (sources (list 5 uint)))
  (median sources))
