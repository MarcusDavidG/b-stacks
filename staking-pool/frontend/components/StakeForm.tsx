import { useState } from 'react';
import { openContractCall } from '@stacks/connect';
import { uintCV, standardPrincipalCV } from '@stacks/transactions';

interface StakeFormProps {
  contractAddress: string;
  onSuccess: () => void;
}

export const StakeForm = ({ contractAddress, onSuccess }: StakeFormProps) => {
  const [amount, setAmount] = useState('');
  const [loading, setLoading] = useState(false);

  const handleStake = async () => {
    if (!amount || isNaN(Number(amount))) return;
    setLoading(true);
    try {
      await openContractCall({
        contractAddress,
        contractName: 'staking-v2',
        functionName: 'stake',
        functionArgs: [uintCV(Number(amount) * 1_000_000)],
        onFinish: () => { onSuccess(); setLoading(false); },
        onCancel: () => setLoading(false),
      });
    } catch (e) {
      setLoading(false);
    }
  };

  return (
    <div className="stake-form">
      <input
        type="number"
        value={amount}
        onChange={e => setAmount(e.target.value)}
        placeholder="Amount in STX"
        min="1"
      />
      <button onClick={handleStake} disabled={loading}>
        {loading ? 'Staking...' : 'Stake STX'}
      </button>
    </div>
  );
};
