;; Collection Verification System

(define-map verified-collections principal bool)
(define-map collection-metadata principal {
  name: (string-ascii 64),
  description: (string-ascii 256),
  verified-at: uint
})

(define-public (verify-collection (collection principal) (name (string-ascii 64)) (description (string-ascii 256)))
  (begin
    (map-set verified-collections collection true)
    (map-set collection-metadata collection {
      name: name,
      description: description,
      verified-at: block-height
    })
    (ok true)))

(define-read-only (is-verified (collection principal))
  (default-to false (map-get? verified-collections collection)))

(define-read-only (get-collection-info (collection principal))
  (map-get? collection-metadata collection))