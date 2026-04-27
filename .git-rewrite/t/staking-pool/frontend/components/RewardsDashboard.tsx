import { useEffect, useState } from 'react';
import { callReadOnlyFunction, cvToValue } from '@stacks/transactions';

interface RewardsDashboardProps {
  userAddress: string;
  contractAddress: string;
}

export const RewardsDashboard = ({ userAddress, contractAddress }: RewardsDashboardProps) => {
  const [stakeInfo, setStakeInfo] = useState<any>(null);
  const [pendingRewards, setPendingRewards] = useState(0);

  useEffect(() => {
    const fetchData = async () => {
      const info = await callReadOnlyFunction({
        contractAddress,
        contractName: 'staking-v2',
        functionName: 'get-stake-info',
        functionArgs: [],
        network: 'mainnet',
        senderAddress: userAddress,
      });
      setStakeInfo(cvToValue(info));
    };
    fetchData();
  }, [userAddress]);

  return (
    <div className="rewards-dashboard">
      <h2>Your Staking Position</h2>
      {stakeInfo && (
        <>
          <p>Staked: {stakeInfo.amount / 1_000_000} STX</p>
          <p>Tier: {stakeInfo.tier}</p>
          <p>Pending Rewards: {pendingRewards} STX</p>
        </>
      )}
    </div>
  );
};
