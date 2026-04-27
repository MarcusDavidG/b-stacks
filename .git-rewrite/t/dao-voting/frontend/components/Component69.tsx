interface Props69 { value: number; label: string; onChange: (v: number) => void; }
export const Component69 = ({ value, label, onChange }: Props69) => (
  <div className="component-69">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
