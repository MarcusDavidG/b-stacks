interface Props597 { value: number; label: string; onChange: (v: number) => void; }
export const Component597 = ({ value, label, onChange }: Props597) => (
  <div className="component-597">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
