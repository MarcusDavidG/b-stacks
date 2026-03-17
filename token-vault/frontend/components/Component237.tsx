interface Props237 { value: number; label: string; onChange: (v: number) => void; }
export const Component237 = ({ value, label, onChange }: Props237) => (
  <div className="component-237">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
