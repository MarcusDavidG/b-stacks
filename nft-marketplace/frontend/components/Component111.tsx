interface Props111 { value: number; label: string; onChange: (v: number) => void; }
export const Component111 = ({ value, label, onChange }: Props111) => (
  <div className="component-111">
    <label>{label}</label>
    <input type="number" value={value} onChange={e => onChange(Number(e.target.value))} />
    <span>Current: {value}</span>
  </div>
);
