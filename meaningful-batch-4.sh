#!/bin/bash
# Batch 4: Frontend TypeScript components
cd /home/marcus/b-stacks

cat > staking-pool/frontend/components/StakeForm.tsx << 'EOF'
import { useState } from 'react';
import { openContractCall } from '@stacks/connect';
import { uintCV, standardPrincipalCV } from '@stacks/transactions';

interface StakeFormProps {
  contractAddress: string;
  onSuccess: () => void;
}

export const StakeForm = ({ contractAddress, onSuccess }: StakeFormProps) => {
  const [amount, setAmount] = useState('');
  const [loading, setLoading] = useState(false);

  const handleStake = async () => {
    if (!amount || isNaN(Number(amount))) return;
    setLoading(true);
    try {
      await openContractCall({
        contractAddress,
        contractName: 'staking-v2',
        functionName: 'stake',
        functionArgs: [uintCV(Number(amount) * 1_000_000)],
        onFinish: () => { onSuccess(); setLoading(false); },
        onCancel: () => setLoading(false),
      });
    } catch (e) {
      setLoading(false);
    }
  };

  return (
    <div className="stake-form">
      <input
        type="number"
        value={amount}
        onChange={e => setAmount(e.target.value)}
        placeholder="Amount in STX"
        min="1"
      />
      <button onClick={handleStake} disabled={loading}>
        {loading ? 'Staking...' : 'Stake STX'}
      </button>
    </div>
  );
};
EOF
git add . && git commit -m "feat(ui): add StakeForm component with Stacks Connect integration"

cat > staking-pool/frontend/components/RewardsDashboard.tsx << 'EOF'
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
EOF
git add . && git commit -m "feat(ui): add RewardsDashboard with live staking data"

cat > nft-marketplace/frontend/components/NFTCard.tsx << 'EOF'
interface NFTCardProps {
  tokenId: number;
  name: string;
  image: string;
  price: number;
  seller: string;
  isAuction: boolean;
  onBuy: (tokenId: number) => void;
}

export const NFTCard = ({ tokenId, name, image, price, seller, isAuction, onBuy }: NFTCardProps) => (
  <div className="nft-card">
    <img src={image} alt={name} className="nft-image" />
    <div className="nft-info">
      <h3>{name}</h3>
      <p className="seller">by {seller.slice(0, 8)}...{seller.slice(-4)}</p>
      <div className="price-row">
        <span className="price">{price / 1_000_000} STX</span>
        {isAuction && <span className="badge">Auction</span>}
      </div>
      <button onClick={() => onBuy(tokenId)} className="buy-btn">
        {isAuction ? 'Place Bid' : 'Buy Now'}
      </button>
    </div>
  </div>
);
EOF
git add . && git commit -m "feat(ui): add NFTCard component with buy/bid actions"

cat > nft-marketplace/frontend/hooks/useMarketplace.ts << 'EOF'
import { useState, useCallback } from 'react';
import { openContractCall } from '@stacks/connect';
import { uintCV } from '@stacks/transactions';

export const useMarketplace = (contractAddress: string) => {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const buyNFT = useCallback(async (listingId: number, price: number) => {
    setLoading(true);
    setError(null);
    try {
      await openContractCall({
        contractAddress,
        contractName: 'marketplace-v2',
        functionName: 'buy',
        functionArgs: [uintCV(listingId)],
        postConditions: [],
        onFinish: () => setLoading(false),
        onCancel: () => setLoading(false),
      });
    } catch (e: any) {
      setError(e.message);
      setLoading(false);
    }
  }, [contractAddress]);

  const placeBid = useCallback(async (listingId: number, bid: number) => {
    setLoading(true);
    try {
      await openContractCall({
        contractAddress,
        contractName: 'marketplace-v2',
        functionName: 'place-bid',
        functionArgs: [uintCV(listingId), uintCV(bid)],
        onFinish: () => setLoading(false),
        onCancel: () => setLoading(false),
      });
    } catch (e: any) {
      setError(e.message);
      setLoading(false);
    }
  }, [contractAddress]);

  return { buyNFT, placeBid, loading, error };
};
EOF
git add . && git commit -m "feat(ui): add useMarketplace hook for buy and bid actions"

cat > dao-voting/frontend/components/ProposalCard.tsx << 'EOF'
interface Proposal {
  id: number;
  title: string;
  description: string;
  proposer: string;
  yesVotes: number;
  noVotes: number;
  endBlock: number;
  currentBlock: number;
}

export const ProposalCard = ({ proposal, onVote }: { proposal: Proposal; onVote: (id: number, support: boolean) => void }) => {
  const totalVotes = proposal.yesVotes + proposal.noVotes;
  const yesPercent = totalVotes > 0 ? (proposal.yesVotes / totalVotes) * 100 : 0;
  const isActive = proposal.currentBlock < proposal.endBlock;

  return (
    <div className={`proposal-card ${isActive ? 'active' : 'closed'}`}>
      <div className="proposal-header">
        <h3>{proposal.title}</h3>
        <span className={`status ${isActive ? 'active' : 'closed'}`}>
          {isActive ? 'Active' : 'Closed'}
        </span>
      </div>
      <p>{proposal.description}</p>
      <div className="vote-bar">
        <div className="yes-bar" style={{ width: `${yesPercent}%` }} />
      </div>
      <div className="vote-counts">
        <span>Yes: {proposal.yesVotes}</span>
        <span>No: {proposal.noVotes}</span>
      </div>
      {isActive && (
        <div className="vote-actions">
          <button onClick={() => onVote(proposal.id, true)} className="yes-btn">Vote Yes</button>
          <button onClick={() => onVote(proposal.id, false)} className="no-btn">Vote No</button>
        </div>
      )}
    </div>
  );
};
EOF
git add . && git commit -m "feat(ui): add ProposalCard with voting progress bar"

echo "Batch 4 done"
git log --oneline | wc -l
