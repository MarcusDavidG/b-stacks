interface Props669 { value: number; label: string; onChange: (v: number) => void; }
export const Component669 = ({ value, label, onChange }: Props669) => (
  <div className="component-669">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
