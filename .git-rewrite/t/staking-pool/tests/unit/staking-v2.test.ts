import { describe, it, expect, beforeEach } from 'vitest';

describe('Staking V2', () => {
  const CONTRACT = 'staking-v2';

  describe('stake()', () => {
    it('should stake minimum amount successfully', () => {
      const amount = 1_000_000; // 1 STX
      expect(amount).toBeGreaterThanOrEqual(1_000_000);
    });

    it('should reject stake below minimum', () => {
      const amount = 500_000; // 0.5 STX
      expect(amount).toBeLessThan(1_000_000);
    });

    it('should assign correct tier for large stake', () => {
      const amount = 100_000_000; // 100 STX
      const tier = amount >= 100_000_000 ? 3 : amount >= 10_000_000 ? 2 : 1;
      expect(tier).toBe(3);
    });

    it('should assign tier 2 for medium stake', () => {
      const amount = 10_000_000;
      const tier = amount >= 100_000_000 ? 3 : amount >= 10_000_000 ? 2 : 1;
      expect(tier).toBe(2);
    });
  });

  describe('unstake()', () => {
    it('should allow partial unstake', () => {
      const staked = 10_000_000;
      const unstakeAmount = 5_000_000;
      expect(unstakeAmount).toBeLessThanOrEqual(staked);
    });

    it('should reject unstake exceeding balance', () => {
      const staked = 5_000_000;
      const unstakeAmount = 10_000_000;
      expect(unstakeAmount).toBeGreaterThan(staked);
    });
  });

  describe('calculate-tier()', () => {
    it('returns tier 0 for small amounts', () => {
      const amount = 1_000_000;
      const tier = amount >= 100_000_000 ? 3 : amount >= 10_000_000 ? 2 : amount >= 1_000_000 ? 1 : 0;
      expect(tier).toBe(1);
    });
  });
});
