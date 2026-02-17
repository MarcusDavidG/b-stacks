import { describe, it, expect } from 'vitest';
import { Cl } from '@stacks/transactions';

describe('Identity Verification Advanced Features', () => {
  const mockFingerprint = new Uint8Array(32).fill(1);
  const mockFace = new Uint8Array(32).fill(2);
  const mockProof = new Uint8Array(32).fill(3);
  const mockCommitment = new Uint8Array(32).fill(4);

  it('should register and verify biometrics', async () => {
    const registerResult = await simnet.callPublicFn('biometric-verification', 'register-biometrics', 
      [Cl.buffer(mockFingerprint), Cl.buffer(mockFace)], address1);
    expect(registerResult.result).toBeOk(Cl.bool(true));

    const verifyResult = await simnet.callPublicFn('biometric-verification', 'verify-biometric', 
      [Cl.stringAscii('fingerprint'), Cl.buffer(mockFingerprint)], address1);
    expect(verifyResult.result).toBeOk(Cl.bool(true));
  });

  it('should handle MFA code generation and verification', async () => {
    const generateResult = await simnet.callPublicFn('mfa-system', 'generate-mfa-code', [], address1);
    expect(generateResult.result).toBeOk();

    const enableResult = await simnet.callPublicFn('mfa-system', 'enable-mfa', 
      [Cl.list([Cl.uint(123456), Cl.uint(789012)])], address1);
    expect(enableResult.result).toBeOk(Cl.bool(true));
  });

  it('should handle zero-knowledge proofs', async () => {
    const submitResult = await simnet.callPublicFn('zk-proof-system', 'submit-zk-proof', 
      [Cl.buffer(mockProof), Cl.buffer(mockCommitment), Cl.uint(100)], address1);
    expect(submitResult.result).toBeOk(Cl.bool(true));

    const challengeResult = await simnet.callPublicFn('zk-proof-system', 'generate-challenge', [], address1);
    expect(challengeResult.result).toBeOk();
  });

  it('should check biometric status', async () => {
    await simnet.callPublicFn('biometric-verification', 'register-biometrics', 
      [Cl.buffer(mockFingerprint), Cl.buffer(mockFace)], address1);
    
    const statusResult = await simnet.callReadOnlyFn('biometric-verification', 'get-biometric-status', [Cl.principal(address1)], address1);
    expect(statusResult.result).toBe(Cl.bool(true));
  });
});