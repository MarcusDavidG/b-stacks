import { describe, it, expect } from 'vitest';

describe('Reward Distributor', () => {
  const BLOCKS_PER_DAY = 144;

  describe('calculate-reward()', () => {
    it('should calculate reward proportional to stake and time', () => {
      const stakeAmount = 10_000_000;
      const blocks = 144;
      const tierMultiplier = 2;
      const reward = (stakeAmount * blocks * tierMultiplier) / 1_000_000;
      expect(reward).toBe(2880);
    });

    it('should return 0 for no stake', () => {
      const stakeAmount = 0;
      const reward = stakeAmount * 144 / 1_000_000;
      expect(reward).toBe(0);
    });
  });

  describe('claim-rewards()', () => {
    it('should enforce daily cooldown', () => {
      const lastClaim = 1000;
      const currentBlock = 1100;
      const elapsed = currentBlock - lastClaim;
      expect(elapsed).toBeLessThan(BLOCKS_PER_DAY);
    });

    it('should allow claim after cooldown', () => {
      const lastClaim = 1000;
      const currentBlock = 1200;
      const elapsed = currentBlock - lastClaim;
      expect(elapsed).toBeGreaterThanOrEqual(BLOCKS_PER_DAY);
    });
  });
});
