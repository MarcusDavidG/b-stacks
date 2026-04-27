interface Props783 { value: number; label: string; onChange: (v: number) => void; }
export const Component783 = ({ value, label, onChange }: Props783) => (
  <div className="component-783">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
