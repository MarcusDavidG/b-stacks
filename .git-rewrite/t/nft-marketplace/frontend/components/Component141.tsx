interface Props141 { value: number; label: string; onChange: (v: number) => void; }
export const Component141 = ({ value, label, onChange }: Props141) => (
  <div className="component-141">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
