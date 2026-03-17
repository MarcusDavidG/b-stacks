interface Props471 { value: number; label: string; onChange: (v: number) => void; }
export const Component471 = ({ value, label, onChange }: Props471) => (
  <div className="component-471">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
