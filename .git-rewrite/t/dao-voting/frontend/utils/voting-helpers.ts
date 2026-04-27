export const calculateQuorum = (totalVotes: number, totalSupply: number): number => {
    return (totalVotes / totalSupply) * 100;
};
