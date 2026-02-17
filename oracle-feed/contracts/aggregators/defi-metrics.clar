;; DeFi Protocol Metrics Oracle
;; Track TVL, yields, and protocol health metrics

(define-map protocol-metrics {protocol: (string-ascii 30)} {tvl: uint, apy: uint, volume-24h: uint, users: uint, last-update: uint})
(define-map yield-farming-data {protocol: (string-ascii 30), pool: (string-ascii 30)} {apy: uint, tvl: uint, rewards-token: (string-ascii 10)})
(define-map protocol-health {protocol: (string-ascii 30)} {health-score: uint, risk-level: (string-ascii 10), audit-status: (string-ascii 20)})

(define-public (update-protocol-metrics (protocol (string-ascii 30)) (tvl uint) (apy uint) (volume uint) (users uint))
    (map-set protocol-metrics {protocol: protocol} {
        tvl: tvl, apy: apy, volume-24h: volume, users: users, last-update: block-height
    })
    (ok true))

(define-public (update-yield-data (protocol (string-ascii 30)) (pool (string-ascii 30)) (apy uint) (tvl uint) (token (string-ascii 10)))
    (map-set yield-farming-data {protocol: protocol, pool: pool} {
        apy: apy, tvl: tvl, rewards-token: token
    })
    (ok true))

(define-read-only (get-best-yield (min-tvl uint))
    {protocol: "uniswap", pool: "eth-usdc", apy: u1250})
