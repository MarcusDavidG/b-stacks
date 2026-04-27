interface Props189 { value: number; label: string; onChange: (v: number) => void; }
export const Component189 = ({ value, label, onChange }: Props189) => (
  <div className="component-189">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
