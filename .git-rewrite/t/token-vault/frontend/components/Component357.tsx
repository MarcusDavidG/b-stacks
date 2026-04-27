interface Props357 { value: number; label: string; onChange: (v: number) => void; }
export const Component357 = ({ value, label, onChange }: Props357) => (
  <div className="component-357">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
