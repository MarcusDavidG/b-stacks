interface Props363 { value: number; label: string; onChange: (v: number) => void; }
export const Component363 = ({ value, label, onChange }: Props363) => (
  <div className="component-363">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
