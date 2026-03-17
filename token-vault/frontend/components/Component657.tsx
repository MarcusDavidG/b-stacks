interface Props657 { value: number; label: string; onChange: (v: number) => void; }
export const Component657 = ({ value, label, onChange }: Props657) => (
  <div className="component-657">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
