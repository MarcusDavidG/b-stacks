interface Props855 { value: number; label: string; onChange: (v: number) => void; }
export const Component855 = ({ value, label, onChange }: Props855) => (
  <div className="component-855">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
