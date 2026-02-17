;; Automated Alert System for Supply Chain

(define-constant ERR-ALERT-EXISTS (err u1101))

(define-map active-alerts uint {
  product-id: uint,
  alert-type: (string-ascii 32),
  severity: uint,
  created-at: uint,
  resolved: bool
})

(define-data-var alert-counter uint u0)

(define-public (create-alert (product-id uint) (alert-type (string-ascii 32)) (severity uint))
  (let ((alert-id (+ (var-get alert-counter) u1)))
    (var-set alert-counter alert-id)
    (map-set active-alerts alert-id {
      product-id: product-id,
      alert-type: alert-type,
      severity: severity,
      created-at: block-height,
      resolved: false
    })
    (ok alert-id)))

(define-public (resolve-alert (alert-id uint))
  (match (map-get? active-alerts alert-id)
    alert (begin
      (map-set active-alerts alert-id (merge alert { resolved: true }))
      (ok true))
    (err u404)))

(define-read-only (get-active-alerts)
  (var-get alert-counter))