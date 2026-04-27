interface Props519 { value: number; label: string; onChange: (v: number) => void; }
export const Component519 = ({ value, label, onChange }: Props519) => (
  <div className="component-519">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
