import React, { useState } from 'react';
interface Props { onSearch: (query: string) => void; }
export const SearchBar: React.FC<Props> = ({ onSearch }) => {
    const [query, setQuery] = useState('');
    return <input value={query} onChange={e => { setQuery(e.target.value); onSearch(e.target.value); }} />;
};
