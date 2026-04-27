(define-public (bridge-nft (nft-id uint) (target-chain uint))
  (ok (initiate-bridge nft-id target-chain)))
