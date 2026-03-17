interface Props729 { value: number; label: string; onChange: (v: number) => void; }
export const Component729 = ({ value, label, onChange }: Props729) => (
  <div className="component-729">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
