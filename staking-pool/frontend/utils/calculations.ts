export const calculateAPY = (rewards: number, staked: number): number => {
    return staked > 0 ? (rewards / staked) * 100 : 0;
};

export const calculateRewards = (amount: number, apy: number, days: number): number => {
    return (amount * apy * days) / (365 * 100);
};
