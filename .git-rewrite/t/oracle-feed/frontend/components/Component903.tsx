interface Props903 { value: number; label: string; onChange: (v: number) => void; }
export const Component903 = ({ value, label, onChange }: Props903) => (
  <div className="component-903">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
