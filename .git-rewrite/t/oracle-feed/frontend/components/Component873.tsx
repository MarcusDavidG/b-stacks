interface Props873 { value: number; label: string; onChange: (v: number) => void; }
export const Component873 = ({ value, label, onChange }: Props873) => (
  <div className="component-873">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
