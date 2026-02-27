(define-public (share-vault (user principal) (permissions uint))
  (ok (grant-access user permissions)))
