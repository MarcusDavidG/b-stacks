interface Props795 { value: number; label: string; onChange: (v: number) => void; }
export const Component795 = ({ value, label, onChange }: Props795) => (
  <div className="component-795">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
