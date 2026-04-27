import { describe, it, expect } from 'vitest';
import { Cl } from '@stacks/transactions';

describe('Supply Chain Advanced Features', () => {
  it('should record IoT sensor data', async () => {
    await simnet.callPublicFn('iot-tracking', 'set-quality-threshold', 
      [Cl.stringAscii('temperature'), Cl.uint(0), Cl.uint(25)], address1);
    
    const result = await simnet.callPublicFn('iot-tracking', 'record-sensor-data', 
      [Cl.uint(1), Cl.stringAscii('temperature'), Cl.uint(20), Cl.stringAscii('warehouse-a')], address1);
    expect(result.result).toBeOk(Cl.bool(true));
  });

  it('should verify compliance certificates', async () => {
    await simnet.callPublicFn('compliance-verification', 'issue-certificate', 
      [Cl.uint(1), Cl.stringAscii('organic'), Cl.uint(1000)], address1);
    
    const result = await simnet.callPublicFn('compliance-verification', 'verify-compliance', [Cl.uint(1)], address1);
    expect(result.result).toBeOk(Cl.bool(true));
  });

  it('should create and resolve alerts', async () => {
    const createResult = await simnet.callPublicFn('alert-system', 'create-alert', 
      [Cl.uint(1), Cl.stringAscii('temperature'), Cl.uint(3)], address1);
    expect(createResult.result).toBeOk(Cl.uint(1));

    const resolveResult = await simnet.callPublicFn('alert-system', 'resolve-alert', [Cl.uint(1)], address1);
    expect(resolveResult.result).toBeOk(Cl.bool(true));
  });
});