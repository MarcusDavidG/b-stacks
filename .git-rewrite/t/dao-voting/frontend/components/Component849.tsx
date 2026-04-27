interface Props849 { value: number; label: string; onChange: (v: number) => void; }
export const Component849 = ({ value, label, onChange }: Props849) => (
  <div className="component-849">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
