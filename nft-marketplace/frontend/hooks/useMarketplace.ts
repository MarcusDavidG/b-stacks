import { useState, useCallback } from 'react';
import { openContractCall } from '@stacks/connect';
import { uintCV } from '@stacks/transactions';

export const useMarketplace = (contractAddress: string) => {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const buyNFT = useCallback(async (listingId: number, price: number) => {
    setLoading(true);
    setError(null);
    try {
      await openContractCall({
        contractAddress,
        contractName: 'marketplace-v2',
        functionName: 'buy',
        functionArgs: [uintCV(listingId)],
        postConditions: [],
        onFinish: () => setLoading(false),
        onCancel: () => setLoading(false),
      });
    } catch (e: any) {
      setError(e.message);
      setLoading(false);
    }
  }, [contractAddress]);

  const placeBid = useCallback(async (listingId: number, bid: number) => {
    setLoading(true);
    try {
      await openContractCall({
        contractAddress,
        contractName: 'marketplace-v2',
        functionName: 'place-bid',
        functionArgs: [uintCV(listingId), uintCV(bid)],
        onFinish: () => setLoading(false),
        onCancel: () => setLoading(false),
      });
    } catch (e: any) {
      setError(e.message);
      setLoading(false);
    }
  }, [contractAddress]);

  return { buyNFT, placeBid, loading, error };
};
