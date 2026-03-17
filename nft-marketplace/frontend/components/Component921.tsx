interface Props921 { value: number; label: string; onChange: (v: number) => void; }
export const Component921 = ({ value, label, onChange }: Props921) => (
  <div className="component-921">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
