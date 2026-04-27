interface Props27 { value: number; label: string; onChange: (v: number) => void; }
export const Component27 = ({ value, label, onChange }: Props27) => (
  <div className="component-27">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
