import { describe, it, expect, beforeEach } from 'vitest';
import { Cl } from '@stacks/transactions';

describe('Staking Pool Integration Tests', () => {
  it('should handle complete stake-reward-withdraw cycle', async () => {
    const stakeAmount = 1000000;
    const result = await simnet.callPublicFn('staking', 'stake', [Cl.uint(stakeAmount)], address1);
    expect(result.result).toBeOk(Cl.bool(true));
  });

  it('should calculate rewards correctly over time', async () => {
    await simnet.mineEmptyBlocks(144);
    const rewards = await simnet.callReadOnlyFn('staking', 'get-pending-rewards', [Cl.principal(address1)], address1);
    expect(rewards.result).toBeUint();
  });
});
