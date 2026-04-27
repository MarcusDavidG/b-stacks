(define-public (delegate-vault (delegate principal) (permissions uint))
  (ok (grant-vault-access delegate permissions)))