(define-trait governable
  ((propose ((string-utf8 500)) (response uint uint))
   (vote (uint bool) (response bool uint))))
