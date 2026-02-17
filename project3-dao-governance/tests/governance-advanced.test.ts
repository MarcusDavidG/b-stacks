import { describe, it, expect } from 'vitest';
import { Cl } from '@stacks/transactions';

describe('DAO Governance Advanced Features', () => {
  it('should handle quadratic voting', async () => {
    const result = await simnet.callPublicFn('advanced-voting', 'quadratic-vote', [Cl.uint(1), Cl.uint(5)], address1);
    expect(result.result).toBeOk(Cl.uint(5));
  });

  it('should manage treasury deposits', async () => {
    const result = await simnet.callPublicFn('treasury-management', 'deposit-to-treasury', [Cl.uint(10000)], address1);
    expect(result.result).toBeOk(Cl.bool(true));
    
    const balance = await simnet.callReadOnlyFn('treasury-management', 'get-treasury-balance', [], address1);
    expect(balance.result).toBe(Cl.uint(10000));
  });

  it('should queue proposal execution', async () => {
    const result = await simnet.callPublicFn('execution-engine', 'queue-execution', 
      [Cl.uint(1), Cl.principal(address1), Cl.stringAscii('test-function'), Cl.list([Cl.uint(100)])], address1);
    expect(result.result).toBeOk(Cl.bool(true));
  });
});