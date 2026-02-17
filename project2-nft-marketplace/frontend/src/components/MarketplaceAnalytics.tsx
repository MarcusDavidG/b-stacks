import React, { useState, useEffect } from 'react';

interface MarketStats {
  totalVolume: number;
  totalSales: number;
  averagePrice: number;
  activeListings: number;
}

export const MarketplaceAnalytics = () => {
  const [stats, setStats] = useState<MarketStats>({
    totalVolume: 0,
    totalSales: 0,
    averagePrice: 0,
    activeListings: 0
  });

  useEffect(() => {
    fetchMarketStats();
  }, []);

  const fetchMarketStats = async () => {
    // Fetch from contract
    setStats({
      totalVolume: 15000,
      totalSales: 342,
      averagePrice: 43.8,
      activeListings: 128
    });
  };

  return (
    <div className="analytics">
      <h3>Market Analytics</h3>
      <div className="stats-grid">
        <div>Volume: {stats.totalVolume} STX</div>
        <div>Sales: {stats.totalSales}</div>
        <div>Avg Price: {stats.averagePrice} STX</div>
        <div>Active: {stats.activeListings}</div>
      </div>
    </div>
  );
};