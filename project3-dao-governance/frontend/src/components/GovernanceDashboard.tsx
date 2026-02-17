import React, { useState, useEffect } from 'react';

interface Proposal {
  id: number;
  title: string;
  status: 'active' | 'passed' | 'failed';
  votesFor: number;
  votesAgainst: number;
}

export const GovernanceDashboard = () => {
  const [proposals, setProposals] = useState<Proposal[]>([]);
  const [treasuryBalance, setTreasuryBalance] = useState(0);

  useEffect(() => {
    fetchProposals();
    fetchTreasuryBalance();
  }, []);

  const fetchProposals = async () => {
    setProposals([
      { id: 1, title: 'Increase Treasury Allocation', status: 'active', votesFor: 150, votesAgainst: 45 },
      { id: 2, title: 'New Partnership Proposal', status: 'passed', votesFor: 200, votesAgainst: 30 }
    ]);
  };

  const fetchTreasuryBalance = async () => {
    setTreasuryBalance(50000);
  };

  return (
    <div className="governance-dashboard">
      <h2>DAO Governance</h2>
      <div className="treasury-info">
        <h3>Treasury: {treasuryBalance} STX</h3>
      </div>
      <div className="proposals">
        {proposals.map(proposal => (
          <div key={proposal.id} className="proposal-card">
            <h4>{proposal.title}</h4>
            <div>Status: {proposal.status}</div>
            <div>For: {proposal.votesFor} | Against: {proposal.votesAgainst}</div>
          </div>
        ))}
      </div>
    </div>
  );
};