interface Props183 { value: number; label: string; onChange: (v: number) => void; }
export const Component183 = ({ value, label, onChange }: Props183) => (
  <div className="component-183">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
