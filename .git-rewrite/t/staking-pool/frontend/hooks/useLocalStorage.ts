import { useState } from 'react';
export const useLocalStorage = (key: string, initial: any) => {
    const [value, setValue] = useState(() => {
        const stored = localStorage.getItem(key);
        return stored ? JSON.parse(stored) : initial;
    });
    return [value, setValue];
};
