interface Props159 { value: number; label: string; onChange: (v: number) => void; }
export const Component159 = ({ value, label, onChange }: Props159) => (
  <div className="component-159">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
