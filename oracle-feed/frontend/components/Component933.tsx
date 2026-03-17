interface Props933 { value: number; label: string; onChange: (v: number) => void; }
export const Component933 = ({ value, label, onChange }: Props933) => (
  <div className="component-933">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
