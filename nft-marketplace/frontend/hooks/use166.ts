import { useState, useEffect } from 'react';
export const use166 = (address: string) => {
  const [data, setData] = useState<any>(null);
  const [loading, setLoading] = useState(false);
  useEffect(() => {
    setLoading(true);
    fetch(`/api/166/${address}`)
      .then(r => r.json())
      .then(d => { setData(d); setLoading(false); })
      .catch(() => setLoading(false));
  }, [address]);
  return { data, loading };
};
