import React from 'react';
import { useConnect } from '@stacks/connect-react';

export const StakingDashboard = () => {
  const { doContractCall } = useConnect();

  const handleStake = async (amount: number) => {
    await doContractCall({
      contractAddress: 'SP2J6ZY48GV1EZ5V2V5RB9MP66SW86PYKKNRV9EJ7',
      contractName: 'staking',
      functionName: 'stake',
      functionArgs: [uintCV(amount)],
    });
  };

  return (
    <div className="staking-dashboard">
      <h2>Staking Pool Dashboard</h2>
      <div className="stats">
        <div>Total Staked: 1,000,000 STX</div>
        <div>APY: 12.5%</div>
        <div>Your Stake: 10,000 STX</div>
      </div>
      <button onClick={() => handleStake(1000000)}>Stake 1 STX</button>
    </div>
  );
};
