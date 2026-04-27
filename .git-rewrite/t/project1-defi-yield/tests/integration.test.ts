import { describe, it, expect } from 'vitest';
import { Cl } from '@stacks/transactions';

describe('Yield Optimizer Integration', () => {
  it('should compound yields automatically', async () => {
    const result = await simnet.callPublicFn('compound-strategy', 'compound-yield', [Cl.uint(1000000)], address1);
    expect(result.result).toBeOk(Cl.uint(1050000));
  });

  it('should fail with insufficient balance', async () => {
    const result = await simnet.callPublicFn('compound-strategy', 'compound-yield', [Cl.uint(500000)], address1);
    expect(result.result).toBeErr(Cl.uint(101));
  });
});