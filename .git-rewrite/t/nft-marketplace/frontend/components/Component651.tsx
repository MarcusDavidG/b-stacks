interface Props651 { value: number; label: string; onChange: (v: number) => void; }
export const Component651 = ({ value, label, onChange }: Props651) => (
  <div className="component-651">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
