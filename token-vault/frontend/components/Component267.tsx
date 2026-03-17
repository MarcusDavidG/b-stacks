interface Props267 { value: number; label: string; onChange: (v: number) => void; }
export const Component267 = ({ value, label, onChange }: Props267) => (
  <div className="component-267">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
