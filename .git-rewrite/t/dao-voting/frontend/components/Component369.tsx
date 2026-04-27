interface Props369 { value: number; label: string; onChange: (v: number) => void; }
export const Component369 = ({ value, label, onChange }: Props369) => (
  <div className="component-369">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
