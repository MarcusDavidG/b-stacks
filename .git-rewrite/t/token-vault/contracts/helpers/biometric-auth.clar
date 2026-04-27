;; Biometric Verification System
;; Enhanced security with biometric authentication

(define-constant ERR-BIOMETRIC-FAILED (err u1600))
(define-map biometric-data principal {fingerprint-hash: (buff 32), face-hash: (buff 32), voice-hash: (buff 32), enabled: bool})
(define-map verification-attempts principal {attempts: uint, last-attempt: uint, locked-until: uint})

(define-public (register-biometric (fingerprint (buff 32)) (face (buff 32)) (voice (buff 32)))
    (map-set biometric-data tx-sender {
        fingerprint-hash: fingerprint, face-hash: face, voice-hash: voice, enabled: true
    })
    (ok true))

(define-public (verify-biometric (fingerprint (buff 32)) (face (buff 32)))
    (let ((stored-data (unwrap! (map-get? biometric-data tx-sender) (err ERR-NOT-FOUND))))
        (asserts! (and (is-eq fingerprint (get fingerprint-hash stored-data))
                      (is-eq face (get face-hash stored-data))) (err ERR-BIOMETRIC-FAILED))
        (ok true)))

(define-read-only (is-biometric-enabled (user principal))
    (default-to false (get enabled (map-get? biometric-data user))))
