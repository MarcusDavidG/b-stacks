interface Props195 { value: number; label: string; onChange: (v: number) => void; }
export const Component195 = ({ value, label, onChange }: Props195) => (
  <div className="component-195">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
