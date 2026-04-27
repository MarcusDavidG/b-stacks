interface Props591 { value: number; label: string; onChange: (v: number) => void; }
export const Component591 = ({ value, label, onChange }: Props591) => (
  <div className="component-591">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
