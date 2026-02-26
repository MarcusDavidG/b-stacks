;; Multi-Signature Wallet
(define-map signers principal bool)
(define-data-var required-sigs uint u2)
(define-public (add-signer (signer principal))
    (ok (map-set signers signer true)))
