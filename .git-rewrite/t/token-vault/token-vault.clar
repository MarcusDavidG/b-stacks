(define-data-var contract-owner principal tx-sender)

(define-map vaults 
  { owner: principal, vault-id: uint }
  { amount: uint, unlock-height: uint, token: principal }
)

(define-data-var vault-nonce uint u0)

(define-public (create-vault (amount uint) (lock-blocks uint))
  (let ((vault-id (var-get vault-nonce)))
    (try! (stx-transfer? amount tx-sender (as-contract tx-sender)))
    (map-set vaults 
      { owner: tx-sender, vault-id: vault-id }
      { amount: amount, unlock-height: (+ block-height lock-blocks), token: .stx }
    )
    (var-set vault-nonce (+ vault-id u1))
    (ok vault-id)
  )
)

(define-public (withdraw (vault-id uint))
  (let ((vault (unwrap! (map-get? vaults { owner: tx-sender, vault-id: vault-id }) (err u404))))
    (asserts! (>= block-height (get unlock-height vault)) (err u403))
    (try! (as-contract (stx-transfer? (get amount vault) tx-sender (get owner vault))))
    (map-delete vaults { owner: tx-sender, vault-id: vault-id })
    (ok (get amount vault))
  )
)

(define-read-only (get-vault (owner principal) (vault-id uint))
  (map-get? vaults { owner: owner, vault-id: vault-id })
)
