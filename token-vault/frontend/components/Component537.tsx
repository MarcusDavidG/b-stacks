interface Props537 { value: number; label: string; onChange: (v: number) => void; }
export const Component537 = ({ value, label, onChange }: Props537) => (
  <div className="component-537">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
