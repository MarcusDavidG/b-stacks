export const parseMetadata = (uri: string): Promise<any> => {
    return fetch(uri).then(r => r.json());
};
export const calculateRoyalty = (price: number, percentage: number): number => {
    return (price * percentage) / 100;
};
