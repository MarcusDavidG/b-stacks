import { useState, useEffect } from 'react';
export const useAsync = (asyncFn: () => Promise<any>) => {
    const [data, setData] = useState(null);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState(null);
    useEffect(() => {
        asyncFn().then(setData).catch(setError).finally(() => setLoading(false));
    }, []);
    return { data, loading, error };
};
