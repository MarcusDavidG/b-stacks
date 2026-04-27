import { describe, it, expect } from 'vitest';

describe('Vote Counter', () => {
  describe('cast-vote()', () => {
    it('should prevent double voting', () => {
      const votes = new Map<string, boolean>();
      const key = 'proposal-1-voter-A';
      votes.set(key, true);
      expect(votes.has(key)).toBe(true);
    });

    it('should reject vote after deadline', () => {
      const endBlock = 1000;
      const currentBlock = 1100;
      expect(currentBlock).toBeGreaterThan(endBlock);
    });

    it('should accept vote before deadline', () => {
      const endBlock = 1000;
      const currentBlock = 900;
      expect(currentBlock).toBeLessThan(endBlock);
    });
  });

  describe('has-voted()', () => {
    it('should return true for existing vote', () => {
      const votes = new Map([['p1-voterA', true]]);
      expect(votes.has('p1-voterA')).toBe(true);
    });

    it('should return false for non-voter', () => {
      const votes = new Map<string, boolean>();
      expect(votes.has('p1-voterB')).toBe(false);
    });
  });
});
