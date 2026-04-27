;; Advanced Identity Verification with Biometric Support

(define-constant ERR-BIOMETRIC-MISMATCH (err u1201))
(define-constant ERR-VERIFICATION-EXPIRED (err u1202))

(define-map biometric-hashes principal {
  fingerprint-hash: (buff 32),
  face-hash: (buff 32),
  registered-at: uint
})

(define-map verification-sessions principal {
  session-id: (buff 16),
  expires-at: uint,
  verified: bool
})

(define-public (register-biometrics (fingerprint (buff 32)) (face (buff 32)))
  (begin
    (map-set biometric-hashes tx-sender {
      fingerprint-hash: fingerprint,
      face-hash: face,
      registered-at: block-height
    })
    (ok true)))

(define-public (verify-biometric (biometric-type (string-ascii 16)) (hash (buff 32)))
  (let ((stored (unwrap! (map-get? biometric-hashes tx-sender) ERR-BIOMETRIC-MISMATCH)))
    (if (is-eq biometric-type "fingerprint")
      (asserts! (is-eq hash (get fingerprint-hash stored)) ERR-BIOMETRIC-MISMATCH)
      (asserts! (is-eq hash (get face-hash stored)) ERR-BIOMETRIC-MISMATCH))
    (ok true)))

(define-read-only (get-biometric-status (user principal))
  (is-some (map-get? biometric-hashes user)))