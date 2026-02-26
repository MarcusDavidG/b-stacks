import { useState } from 'react';
export const useFormValidation = (initial: any) => {
    const [values, setValues] = useState(initial);
    const [errors, setErrors] = useState({});
    return { values, errors, setValues };
};
