import React from 'react';
interface Props { proposalId: number; onVote: (id: number, support: boolean) => void; }
export const VoteButton: React.FC<Props> = ({ proposalId, onVote }) => (
    <div>
        <button onClick={() => onVote(proposalId, true)}>Vote For</button>
        <button onClick={() => onVote(proposalId, false)}>Vote Against</button>
    </div>
);
