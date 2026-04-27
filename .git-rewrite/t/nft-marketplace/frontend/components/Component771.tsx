interface Props771 { value: number; label: string; onChange: (v: number) => void; }
export const Component771 = ({ value, label, onChange }: Props771) => (
  <div className="component-771">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
