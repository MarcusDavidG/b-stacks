interface Props429 { value: number; label: string; onChange: (v: number) => void; }
export const Component429 = ({ value, label, onChange }: Props429) => (
  <div className="component-429">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
