interface Props231 { value: number; label: string; onChange: (v: number) => void; }
export const Component231 = ({ value, label, onChange }: Props231) => (
  <div className="component-231">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
