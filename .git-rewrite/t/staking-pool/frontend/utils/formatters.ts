export const formatSTX = (amount: number): string => {
    return `${(amount / 1000000).toFixed(2)} STX`;
};

export const formatAddress = (address: string): string => {
    return `${address.slice(0, 6)}...${address.slice(-4)}`;
};
