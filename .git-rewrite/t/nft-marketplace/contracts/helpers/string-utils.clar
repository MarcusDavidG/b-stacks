(define-read-only (concat-strings (s1 (string-ascii 50)) (s2 (string-ascii 50)))
  (unwrap-panic (as-max-len? (concat s1 s2) u100)))
