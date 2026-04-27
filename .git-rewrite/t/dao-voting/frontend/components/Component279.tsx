interface Props279 { value: number; label: string; onChange: (v: number) => void; }
export const Component279 = ({ value, label, onChange }: Props279) => (
  <div className="component-279">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
