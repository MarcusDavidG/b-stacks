;; Supply Chain Compliance Verification

(define-constant ERR-COMPLIANCE-FAILED (err u1001))
(define-constant ERR-CERTIFICATE-EXPIRED (err u1002))

(define-map compliance-certificates uint {
  issuer: principal,
  certificate-type: (string-ascii 64),
  issued-at: uint,
  expires-at: uint,
  valid: bool
})

(define-map compliance-standards (string-ascii 64) {
  required: bool,
  authority: principal
})

(define-public (issue-certificate (product-id uint) (cert-type (string-ascii 64)) (expires-at uint))
  (begin
    (map-set compliance-certificates product-id {
      issuer: tx-sender,
      certificate-type: cert-type,
      issued-at: block-height,
      expires-at: expires-at,
      valid: true
    })
    (ok true)))

(define-public (verify-compliance (product-id uint))
  (let ((cert (unwrap! (map-get? compliance-certificates product-id) ERR-COMPLIANCE-FAILED)))
    (asserts! (get valid cert) ERR-COMPLIANCE-FAILED)
    (asserts! (> (get expires-at cert) block-height) ERR-CERTIFICATE-EXPIRED)
    (ok true)))

(define-read-only (get-certificate (product-id uint))
  (map-get? compliance-certificates product-id))