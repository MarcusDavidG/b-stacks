interface Props639 { value: number; label: string; onChange: (v: number) => void; }
export const Component639 = ({ value, label, onChange }: Props639) => (
  <div className="component-639">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
