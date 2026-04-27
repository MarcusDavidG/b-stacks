interface Props561 { value: number; label: string; onChange: (v: number) => void; }
export const Component561 = ({ value, label, onChange }: Props561) => (
  <div className="component-561">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
