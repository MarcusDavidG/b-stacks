interface Props867 { value: number; label: string; onChange: (v: number) => void; }
export const Component867 = ({ value, label, onChange }: Props867) => (
  <div className="component-867">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
