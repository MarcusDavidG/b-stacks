(define-public (import-snapshot (proposal-hash (buff 32)))
  (ok (sync-snapshot proposal-hash)))
