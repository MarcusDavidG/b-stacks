interface Props789 { value: number; label: string; onChange: (v: number) => void; }
export const Component789 = ({ value, label, onChange }: Props789) => (
  <div className="component-789">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
