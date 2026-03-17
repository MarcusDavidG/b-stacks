interface Props723 { value: number; label: string; onChange: (v: number) => void; }
export const Component723 = ({ value, label, onChange }: Props723) => (
  <div className="component-723">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
