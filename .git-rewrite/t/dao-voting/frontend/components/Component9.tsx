interface Props9 { value: number; label: string; onChange: (v: number) => void; }
export const Component9 = ({ value, label, onChange }: Props9) => (
  <div className="component-9">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
