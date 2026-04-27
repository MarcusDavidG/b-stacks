interface Props207 { value: number; label: string; onChange: (v: number) => void; }
export const Component207 = ({ value, label, onChange }: Props207) => (
  <div className="component-207">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
