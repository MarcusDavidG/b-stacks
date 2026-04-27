import React, { useState, useEffect } from 'react';
import { useConnect } from '@stacks/connect-react';

export const YieldDashboard = () => {
  const [balance, setBalance] = useState(0);
  const [yieldRate, setYieldRate] = useState(5.2);
  const { userSession } = useConnect();

  useEffect(() => {
    if (userSession.isUserSignedIn()) {
      fetchUserBalance();
    }
  }, [userSession]);

  const fetchUserBalance = async () => {
    // Fetch balance from contract
    setBalance(1000);
  };

  return (
    <div className="dashboard">
      <h2>Yield Optimizer</h2>
      <div className="stats">
        <div>Balance: {balance} STX</div>
        <div>Current Yield: {yieldRate}%</div>
      </div>
    </div>
  );
};