interface Props927 { value: number; label: string; onChange: (v: number) => void; }
export const Component927 = ({ value, label, onChange }: Props927) => (
  <div className="component-927">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
