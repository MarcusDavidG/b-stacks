interface Props663 { value: number; label: string; onChange: (v: number) => void; }
export const Component663 = ({ value, label, onChange }: Props663) => (
  <div className="component-663">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
