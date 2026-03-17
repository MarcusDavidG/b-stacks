interface Props435 { value: number; label: string; onChange: (v: number) => void; }
export const Component435 = ({ value, label, onChange }: Props435) => (
  <div className="component-435">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
