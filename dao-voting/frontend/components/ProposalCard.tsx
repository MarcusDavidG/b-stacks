import React from 'react';
interface Props { proposal: any; }
export const ProposalCard: React.FC<Props> = ({ proposal }) => (
    <div className="proposal-card">
        <h4>{proposal.title}</h4>
        <p>For: {proposal.votesFor} | Against: {proposal.votesAgainst}</p>
    </div>
);
