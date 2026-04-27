interface Props171 { value: number; label: string; onChange: (v: number) => void; }
export const Component171 = ({ value, label, onChange }: Props171) => (
  <div className="component-171">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
