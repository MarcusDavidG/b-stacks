;; Multi-Factor Authentication System

(define-constant ERR-INVALID-CODE (err u1301))
(define-constant ERR-CODE-EXPIRED (err u1302))

(define-map mfa-codes principal {
  code: uint,
  expires-at: uint,
  attempts: uint
})

(define-map mfa-settings principal {
  enabled: bool,
  backup-codes: (list 10 uint),
  phone-verified: bool
})

(define-public (generate-mfa-code)
  (let ((code (mod (unwrap-panic (get-block-info? vrf-seed block-height)) u1000000)))
    (map-set mfa-codes tx-sender {
      code: code,
      expires-at: (+ block-height u10), ;; 10 blocks expiry
      attempts: u0
    })
    (ok code)))

(define-public (verify-mfa-code (submitted-code uint))
  (let ((stored (unwrap! (map-get? mfa-codes tx-sender) ERR-INVALID-CODE)))
    (asserts! (< block-height (get expires-at stored)) ERR-CODE-EXPIRED)
    (asserts! (is-eq submitted-code (get code stored)) ERR-INVALID-CODE)
    (map-delete mfa-codes tx-sender)
    (ok true)))

(define-public (enable-mfa (backup-codes (list 10 uint)))
  (begin
    (map-set mfa-settings tx-sender {
      enabled: true,
      backup-codes: backup-codes,
      phone-verified: false
    })
    (ok true)))

(define-read-only (is-mfa-enabled (user principal))
  (match (map-get? mfa-settings user)
    settings (get enabled settings)
    false))