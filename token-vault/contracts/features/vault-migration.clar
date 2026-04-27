(define-public (migrate-vault (old-vault uint) (new-vault uint))
  (ok (transfer-vault-contents old-vault new-vault)))