interface Props909 { value: number; label: string; onChange: (v: number) => void; }
export const Component909 = ({ value, label, onChange }: Props909) => (
  <div className="component-909">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
