import { describe, it, expect } from 'vitest';
describe('NFT Marketplace Tests', () => {
  it('should create listing successfully', async () => {
    const result = await simnet.callPublicFn('marketplace', 'create-listing', [], address1);
    expect(result.result).toBeOk();
  });
});
