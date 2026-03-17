interface Props489 { value: number; label: string; onChange: (v: number) => void; }
export const Component489 = ({ value, label, onChange }: Props489) => (
  <div className="component-489">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
