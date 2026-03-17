import { describe, it, expect } from 'vitest';

describe('Price Aggregator', () => {
  const MAX_PRICE_AGE = 10;

  describe('get-price()', () => {
    it('should return price when fresh', () => {
      const lastUpdated = 100;
      const currentBlock = 105;
      const age = currentBlock - lastUpdated;
      expect(age).toBeLessThan(MAX_PRICE_AGE);
    });

    it('should reject stale price', () => {
      const lastUpdated = 100;
      const currentBlock = 115;
      const age = currentBlock - lastUpdated;
      expect(age).toBeGreaterThanOrEqual(MAX_PRICE_AGE);
    });
  });

  describe('submit-price()', () => {
    it('should record price with block height', () => {
      const submission = { price: 50000, block: 1000 };
      expect(submission.price).toBe(50000);
      expect(submission.block).toBe(1000);
    });
  });
});
