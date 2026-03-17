interface Props327 { value: number; label: string; onChange: (v: number) => void; }
export const Component327 = ({ value, label, onChange }: Props327) => (
  <div className="component-327">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
