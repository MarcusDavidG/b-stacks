interface Props285 { value: number; label: string; onChange: (v: number) => void; }
export const Component285 = ({ value, label, onChange }: Props285) => (
  <div className="component-285">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
