(define-public (sync-cross-chain-price (chain uint) (asset (string-ascii 10)))
  (ok (fetch-cross-chain-price chain asset)))