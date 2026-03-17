interface Props861 { value: number; label: string; onChange: (v: number) => void; }
export const Component861 = ({ value, label, onChange }: Props861) => (
  <div className="component-861">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
