interface Props831 { value: number; label: string; onChange: (v: number) => void; }
export const Component831 = ({ value, label, onChange }: Props831) => (
  <div className="component-831">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
