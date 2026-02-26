export const isValidAmount = (amount: string): boolean => {
    const num = parseFloat(amount);
    return !isNaN(num) && num > 0;
};

export const isValidAddress = (address: string): boolean => {
    return address.startsWith('SP') && address.length === 41;
};
