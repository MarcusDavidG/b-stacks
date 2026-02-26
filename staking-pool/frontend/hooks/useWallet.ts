import { useState } from 'react';
export const useWallet = () => {
    const [address, setAddress] = useState<string | null>(null);
    const connect = async () => setAddress('SP123...');
    return { address, connect };
};
