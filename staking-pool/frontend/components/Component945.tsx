interface Props945 { value: number; label: string; onChange: (v: number) => void; }
export const Component945 = ({ value, label, onChange }: Props945) => (
  <div className="component-945">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
