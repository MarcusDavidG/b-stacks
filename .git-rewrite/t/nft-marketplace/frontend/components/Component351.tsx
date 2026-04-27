interface Props351 { value: number; label: string; onChange: (v: number) => void; }
export const Component351 = ({ value, label, onChange }: Props351) => (
  <div className="component-351">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
