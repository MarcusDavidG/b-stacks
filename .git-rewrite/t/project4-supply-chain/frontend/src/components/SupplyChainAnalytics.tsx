import React, { useState, useEffect } from 'react';

interface SupplyChainMetrics {
  totalProducts: number;
  averageTransitTime: number;
  complianceRate: number;
  qualityScore: number;
}

export const SupplyChainAnalytics = () => {
  const [metrics, setMetrics] = useState<SupplyChainMetrics>({
    totalProducts: 0,
    averageTransitTime: 0,
    complianceRate: 0,
    qualityScore: 0
  });

  useEffect(() => {
    fetchMetrics();
  }, []);

  const fetchMetrics = async () => {
    setMetrics({
      totalProducts: 1247,
      averageTransitTime: 5.2,
      complianceRate: 98.5,
      qualityScore: 94.2
    });
  };

  return (
    <div className="supply-chain-analytics">
      <h2>Supply Chain Analytics</h2>
      <div className="metrics-grid">
        <div className="metric">
          <h3>Total Products</h3>
          <div className="value">{metrics.totalProducts}</div>
        </div>
        <div className="metric">
          <h3>Avg Transit Time</h3>
          <div className="value">{metrics.averageTransitTime} days</div>
        </div>
        <div className="metric">
          <h3>Compliance Rate</h3>
          <div className="value">{metrics.complianceRate}%</div>
        </div>
        <div className="metric">
          <h3>Quality Score</h3>
          <div className="value">{metrics.qualityScore}%</div>
        </div>
      </div>
    </div>
  );
};