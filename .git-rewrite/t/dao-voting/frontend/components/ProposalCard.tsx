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
