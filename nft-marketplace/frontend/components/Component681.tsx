interface Props681 { value: number; label: string; onChange: (v: number) => void; }
export const Component681 = ({ value, label, onChange }: Props681) => (
  <div className="component-681">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
