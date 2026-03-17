interface Props495 { value: number; label: string; onChange: (v: number) => void; }
export const Component495 = ({ value, label, onChange }: Props495) => (
  <div className="component-495">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
