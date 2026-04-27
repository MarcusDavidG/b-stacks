interface Props879 { value: number; label: string; onChange: (v: number) => void; }
export const Component879 = ({ value, label, onChange }: Props879) => (
  <div className="component-879">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
