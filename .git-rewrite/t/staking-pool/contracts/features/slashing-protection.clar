(define-public (protect-from-slash (validator principal))
  (ok (add-protection validator)))